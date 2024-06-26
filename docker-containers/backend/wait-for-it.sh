#!/usr/bin/env bash

# wait-for-it.sh -- A script to wait for a TCP host/port to become available

set -e

TIMEOUT=15
QUIET=0
HOST=
PORT=
PROTOCOL="tcp"

echoerr() {
  if [ "$QUIET" -ne 1 ]; then
    echo "$@" 1>&2
  fi
}

usage() {
  cat << USAGE >&2
Usage:
  $0 host:port [-p|--protocol tcp|http|https] [-t|--timeout timeout] [-- command args]
  -q | --quiet                        Do not output any status messages
  -t TIMEOUT | --timeout=timeout      Timeout in seconds, zero for no timeout
  -p PROTOCOL | --protocol=protocol   Specify a protocol to test. Supported values: tcp, http, https
  -- COMMAND ARGS                     Execute command with args after the test finishes
USAGE
  exit 1
}

wait_for() {
  case "$PROTOCOL" in
    tcp)
      timeout $TIMEOUT bash -c 'cat < /dev/null > /dev/tcp/$0/$1' "$HOST" "$PORT"
      ;;
    http)
      timeout $TIMEOUT bash -c 'curl -s -o /dev/null $0:$1' "$HOST" "$PORT"
      ;;
    https)
      timeout $TIMEOUT bash -c 'curl -s -o /dev/null --insecure https://$0:$1' "$HOST" "$PORT"
      ;;
    *)
      echoerr "Unsupported protocol: $PROTOCOL"
      exit 1
      ;;
  esac
}

while [ $# -gt 0 ]; do
  case "$1" in
    *:* )
    HOST=$(printf "%s\n" "$1"| cut -d : -f 1)
    PORT=$(printf "%s\n" "$1"| cut -d : -f 2)
    shift 1
    ;;
    -p)
    PROTOCOL="$2"
    if [ "$PROTOCOL" != "tcp" ] && [ "$PROTOCOL" != "http" ] && [ "$PROTOCOL" != "https" ]; then
      echoerr "Unsupported protocol: $PROTOCOL"
      exit 1
    fi
    shift 2
    ;;
    --protocol=*)
    PROTOCOL="${1#*=}"
    if [ "$PROTOCOL" != "tcp" ] && [ "$PROTOCOL" != "http" ] && [ "$PROTOCOL" != "https" ]; then
      echoerr "Unsupported protocol: $PROTOCOL"
      exit 1
    fi
    shift 1
    ;;
    -q | --quiet)
    QUIET=1
    shift 1
    ;;
    -t)
    TIMEOUT="$2"
    if [ "$TIMEOUT" = "" ]; then break; fi
    shift 2
    ;;
    --timeout=*)
    TIMEOUT="${1#*=}"
    shift 1
    ;;
    --)
    shift
    break
    ;;
    --help)
    usage
    ;;
    *)
    echoerr "Unknown argument: $1"
    usage
    ;;
  esac
done

if [ "$HOST" = "" ] || [ "$PORT" = "" ]; then
  echoerr "Error: you need to provide a host and port to test."
  usage
fi

wait_for

if [ $# -gt 0 ]; then
  exec "$@"
fi
