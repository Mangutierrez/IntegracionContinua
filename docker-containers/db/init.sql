CREATE DATABASE IF NOT EXISTS web_db;
USE web_db;

CREATE TABLE IF NOT EXISTS recipes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  ingredients TEXT NOT NULL,
  instructions TEXT NOT NULL,
  duration VARCHAR(50) NOT NULL,
  imageUrl VARCHAR(255) NOT NULL
);

INSERT INTO recipes (title, ingredients, instructions, duration, imageUrl) VALUES
("Churrascas al sartén", "500 gramos de harina, 2 cucharaditas de sal, ½ cucharadita de bicarbonato, ½ cucharadita de polvos de hornear, ¾ taza de agua tibia, ½ taza de aceite o mantequilla derretida", "Mezcla ingredientes secos, añade aceite y agua, forma masa, amasa, corta, extiende, cocina en sartén caliente.", "45m", "https://cdn0.recetasgratis.net/es/posts/1/1/3/churrascas_al_sarten_77311_600.jpg"),
("Medialunas de grasa", "500 gramos de harina, 250 mililitros de agua, 25 gramos de azúcar, 5 gramos de sal, 100 gramos de margarina, 100 gramos de grasa bovina, 1 cucharada sopera de harina (para el empaste), 5 gramos de levadura fresca", "Mezcla ingredientes, amasa, deja reposar, estira, unta empaste, dobla, enrolla, corta, hornea.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/1/2/3/medialunas_de_grasa_77321_600.jpg"),
("Torta aesthetic", "3 bizcochos, 800 gramos de crema", "Hornea bizcochos, arma el pastel con crema, cubre y decora.", "30m", "https://cdn0.recetasgratis.net/es/posts/1/3/3/torta_aesthetic_77331_600.jpg"),
("Mazamorra de maíz", "200 gramos de maíz amarillo, ramas de canela c/n, clavos de olor c/n, azúcar al gusto, 2½ litros de agua", "Tuesta maíz, muele, disuelve en agua, aromatiza, cocina, endulza.", "45m", "https://cdn0.recetasgratis.net/es/posts/0/1/3/mazamorra_de_maiz_77310_600.jpg"),
("Sorrentinos caprese", "Para la pasta:, 250 gramos de harina 000, 1 huevo, 50 mililitros de agua, 1 cucharada sopera de aceite, Para el relleno:, 500 gramos de ricota, 50 gramos de tomates secos, 2 cucharadas soperas de albahaca deshidratada, 50 gramos de queso rallado", "Prepara la masa, hidrata tomates, mezcla relleno, arma sorrentinos, cocina en agua hirviendo.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/2/0/3/sorrentinos_caprese_77302_600.jpg"),
("Champú de guanábana", "3 manzanas, 2 membrillos, ½ piña, 1 guanábana, ramas de canela, clavos de olor, anís estrella, 200 gramos de harina de maíz, azúcar al gusto, 3 litros de agua", "Prepara frutas, aromatiza agua, cocina harina de maíz, añade frutas y guanábana.", "45m", "https://cdn0.recetasgratis.net/es/posts/2/1/3/champu_de_guanabana_77312_600.jpg"),
("Flan de café sin horno", "500 gramos de leche, 2 huevos, 120 gramos de azúcar, 50 gramos de esencia de café, 9 gramos de gelatina en polvo neutra, 54 gramos de agua", "Hidrata gelatina, calienta leche y café, mezcla con huevos y azúcar, añade gelatina, enfría.", "30m", "https://cdn0.recetasgratis.net/es/posts/2/3/3/flan_de_cafe_sin_horno_77332_600.jpg"),
("Malfatti de espinaca sin ricota", "50 gramos de espinaca, 150 gramos de puré de papa, 40 gramos de harina, 1 cucharada postre de nuez moscada, ¼ cucharada postre de pimienta, 1 huevo, 2 cucharadas soperas de queso rallado (opcional)", "Cocina papa, mezcla con espinaca y condimentos, forma bolas, cocina en agua hirviendo.", "45m", "https://cdn0.recetasgratis.net/es/posts/0/2/3/malfatti_de_espinaca_sin_ricota_77320_600.jpg"),
("Sorrentinos a la crema", "Para la salsa:, 750 mililitros de crema de leche (3¾ tazas), 1 cucharada sopera de maicena, Para los sorrentinos:, 1 huevo, 250 gramos de harina, 50 mililitros de agua, relleno a gusto", "Prepara masa, arma sorrentinos, cocina, calienta crema con maicena, mezcla todo.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/3/0/3/sorrentinos_a_la_crema_77303_600.jpg"),
("Tarta de acelga y atún", "1 disco de masa de tarta, 1 lata de atún al natural, 100 gramos de acelga, 1 cebolla chica, ¼ morrón verde, 2 huevos, 1 cucharada postre de comino, 1 pizca de pimienta", "Saltea cebolla y morrón, mezcla con acelga y atún, añade huevos, hornea.", "45m", "https://cdn0.recetasgratis.net/es/posts/3/2/3/tarta_de_acelga_y_atun_77323_600.jpg"),
("Brandada de bacalao con patata", "2 patatas astérix o inglesas, 500 gramos de bacalao desalado, limpio y desmenuzado, 1 cebolla blanca, 1 puñado de cebollino y perejil, 4 cucharadas soperas de crema de leche, 1 taza de leche (240 mililitros), 1 puñado de pimienta, 1 puñado de nuez moscada, ½ cucharadita de sal, 1 puñado de ajo y cebolla en polvo", "Cocina patatas, sofríe bacalao y cebolla, mezcla con patatas y condimentos.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/4/0/3/brandada_de_bacalao_con_patata_77304_600.jpg"),
("Seco de cabrito", "1 kilogramo de cabrito, 2 kilogramos de cebollas rojas, 3 tomates, 100 gramos de zapallo loche, 1 manojo de culantro, 2 cucharadas soperas de ají amarillo molido, 2 cucharadas soperas de ají panka en pasta, 2 cucharadas soperas de ajo molido o picado, 1 pizca de pimienta negra molida, 1 pizca de comino molido, 1 taza de chicha de jora, sal al gusto, aceite c/n, 250 gramos de frejoles, 1 cebolla, 1 cucharada sopera de ajo molido, 1 trozo de tocino, 2 hojas de laurel, 1 pizca de comino molido, 1 pizca de pimienta, sal al gusto, arroz blanco graneado, yucas sancochadas, sarsa criolla", "Sella cabrito, cocina con aderezo de cebolla y ají, sirve con frejoles y arroz.", "2h 30m", "https://cdn0.recetasgratis.net/es/posts/4/1/3/seco_de_cabrito_77314_600.jpg"),
("Pescado relleno al horno", "1 kilogramo de tilapia entera fresca, 1 limón, sal y pimienta negra al gusto, 1 taza de aceite de oliva para engrasar, Relleno, 1 cebolla picada, 1 pimiento rojo picado, 2 tomates picados sin semillas, 150 gramos de tocino picado, 2 tazas de harina de maíz (240 gramos), sal y aroma verde al gusto", "Sazona pescado, rellena con farofa, hornea cubierto con papel de aluminio.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/5/0/3/pescado_relleno_al_horno_77305_600.jpg"),
("Alfajores sin azúcar", "Para la masa, 160 gramos de harina 0000, 5 sobres de edulcorante, 1 huevo, 40 centímetros cúbicos de aceite neutro (girasol o soja), 1 cucharada postre de polvo para hornear, ralladura de piel de 1/2 limón, Para el relleno, 100 gramos de dulce de leche sin azúcar", "Mezcla ingredientes, corta tapas, hornea, rellena con dulce de leche.", "30m", "https://cdn0.recetasgratis.net/es/posts/5/2/3/alfajores_sin_azucar_77325_600.jpg"),
("Canelones de verdura y pollo", "Para los panqueques:, 1 huevo, 100 gramos de harina, 200 mililitros de leche, Para el relleno y salsa:, 3 pata y muslo de pollo, 2 cucharadas soperas de manteca, 2 cucharadas soperas de harina, 2 tazas de leche (480 mililitros), ½ paquete de acelga, 1 cebolla, 2 cucharadas de postre de nuez moscada, ½ cucharada postre de pimienta, 1 taza de salsa de tomate, 4 cucharadas soperas de queso rallado", "Prepara panqueques, cocina pollo y acelga, mezcla, rellena, cubre con salsa y hornea.", "45m", "https://cdn0.recetasgratis.net/es/posts/5/9/2/canelones_de_verdura_y_pollo_77295_600.jpg"),
("Flan napolitano sin queso", "1 taza de azúcar refinada, 375 gramos de leche condensada, 340 mililitros de leche evaporada, 5 huevos, 1 cucharadita de esencia de vainilla", "Prepara caramelo, mezcla ingredientes, hornea a baño María, enfría.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/6/0/3/flan_napolitano_sin_queso_77306_600.jpg"),
("Torta caluga", "Masa, 310 gramos de galletas de vino, 250 gramos de nueces tostadas, 200 gramos de mantequilla sin sal, ½ cucharadita de sal fina, Relleno, 120 gramos de azúcar, 100 gramos de agua, 80 gramos de mantequilla, 800 gramos de leche condensada (3⅓ tazas), frambuesas (opcional)", "Tritura galletas y nueces, mezcla con mantequilla, prepara caramelo, monta y refrigera.", "45m", "https://cdn0.recetasgratis.net/es/posts/6/9/2/torta_caluga_77296_600.jpg"),
("Tortilla de espinaca y zanahoria", "2 tazas de espinacas frescas, 1 zanahoria grande, 1 cebolla, 4 huevos, ¼ taza de leche (60 mililitros), 1 chorro de aceite, condimentos al gusto", "Saltea espinacas y cebolla, mezcla con zanahoria y huevos, cocina en sartén.", "15m", "https://cdn0.recetasgratis.net/es/posts/7/0/3/tortilla_de_espinaca_y_zanahoria_77307_600.jpg"),
("Porotos con rienda y longaniza", "2 tazas de porotos remojados de la noche anterior, 300 gramos de zapallo cortado en cubos, 1 cebolla, 2 dientes de ajo, 2 longanizas, 1 cucharadita de orégano, ¼ cucharadita de pimienta, sal a gusto, ¼ paquete de spaguetti, aceite, ¼ cucharadita de comino molido, 2 litros de agua hirviendo", "Cocina porotos y zapallo, sofríe longaniza y cebolla, mezcla todo, añade pasta.", "45m", "https://cdn0.recetasgratis.net/es/posts/7/2/3/porotos_con_rienda_y_longaniza_77327_600.jpg"),
("Empanadas de pescado", "12 discos de masa para empanadas, 500 gramos de filet de merluza sin espinas, 1 cebolla, ½ pimiento amarillo, ½ pimiento rojo, 1 huevo duro, 1 cucharada sopera de aceite, ½ copa de vino blanco, 50 gramos de aceitunas, Sal, pimienta, cúrcuma y pimentón dulce a gusto", "Cocina relleno, arma empanadas, hornea.", "45m", "https://cdn0.recetasgratis.net/es/posts/8/0/3/empanadas_de_pescado_77308_600.jpg"),
("Encanelado", "Para los bizcochos, 100 gramos de harina, 100 gramos de azúcar (½ taza), 3 huevos, 6 gramos de polvo de hornear, Para el almíbar:, 100 gramos de azúcar (½ taza), 250 gramos de agua, canela en rama, 25 gramos de pisco, Para ensamblar:, manjar blanco c/n, 20 gramos de azúcar impalpable, 20 gramos de canela en polvo", "Prepara bizcocho, almíbar, arma encanelado, refrigera.", "45m", "https://cdn0.recetasgratis.net/es/posts/8/2/3/encanelado_77328_600.jpg"),
("Bolas de fraile con dulce de leche", "500 gramos de harina 0000, 25 gramos de levadura, 40 gramos de azúcar, 1 huevo, 180 centímetros cúbicos de leche tibia, 1 cucharadita de esencia de vainilla, 50 gramos de manteca pomada, Para el relleno, 250 gramos de dulce de leche repostero, Extras, aceite para freir, azúcar para espolvorear", "Prepara masa, deja leudar, forma bolas, fríe, rellena con dulce de leche.", "3h", "https://cdn0.recetasgratis.net/es/posts/8/9/2/bolas_de_fraile_con_dulce_de_leche_77298_600.jpg"),
("Mazamorra de membrillo", "2 membrillos, ramas de canela c/n, clavos de olor c/n, 3 cucharadas soperas de maicena, 300 gramos de azúcar (1½ tazas)", "Cocina membrillos, endulza, espesa con maicena.", "45m", "https://cdn0.recetasgratis.net/es/posts/9/0/3/mazamorra_de_membrillo_77309_600.jpg"),
("Pastelitos de batata", "12 tapas para pastelitos, 250 gramos de dulce de batata, Extras, aceite para freir cantidad necesaria, 2 cucharadas soperas de miel, azúcar granulada cantidad necesaria para decorar", "Arma pastelitos con dulce de batata, fríe, decora con miel y azúcar.", "30m", "https://cdn0.recetasgratis.net/es/posts/9/2/3/pastelitos_de_batata_77329_600.jpg"),
("Pastelitos con tapas de empanadas", "12 tapas de empanadas, 250 gramos de dulce de membrillo o de batata, Extras, aceite para freir, 2 cucharadas soperas de miel", "Arma pastelitos con dulce, fríe, decora con miel.", "30m", "https://cdn0.recetasgratis.net/es/posts/9/9/2/pastelitos_con_tapas_de_empanadas_77299_600.jpg"),
("Bistec apanado", "4 bistecs, ½ cucharadita de pimienta negra molida, ¼ cucharadita de comino molido, 1 cucharada sopera de sal, 200 gramos de harina, 3 huevos, 250 gramos de pan molido, aceite para freir, papas fritas, palta, tomate", "Condimenta bistecs, pasa por harina, huevo y pan, fríe.", "30m", "https://cdn0.recetasgratis.net/es/posts/1/9/2/bistec_apanado_77291_600.jpg"),
("Fetuccini a la huancaína", "1 paquete de fetuccini, 4 ajíes amarillos, 3 ajo, 1 cebolla roja grande, 200 gramos de queso, 200 mililitros de leche evaporada, sal al gusto, aceite c/n", "Cocina fetuccini, prepara salsa con ajíes, mezcla todo.", "30m", "https://cdn0.recetasgratis.net/es/posts/2/9/2/fetuccini_a_la_huancaina_77292_600.jpg"),
("Trucha frita con papas", "2 truchas, 2 limones, 2 cucharadas soperas de ajo molido, 1½ cucharadas soperas de sal, ½ cucharadita de pimienta negra molida, ¼ cucharadita de comino molido, 200 gramos de harina, aceite para freir, 4 papas amarillas, 1 cubo de mantequilla, choclos, lechuga, tomate, cebolla", "Sazona trucha, enharina, fríe, acompaña con papas y ensalada.", "45m", "https://cdn0.recetasgratis.net/es/posts/3/9/2/trucha_frita_con_papas_77293_600.jpg"),
("Pizza de arroz", "½ taza de arroz cocido (87½ gramos), 1 huevo, 2 cucharadas soperas de maicena, 1 cucharada postre de mostaza, 60 gramos de queso fresco, 4 aceitunas, 2 cucharadas soperas de salsa de tomate", "Mezcla arroz con huevo y maicena, hornea base, añade salsa y queso, hornea.", "45m", "https://cdn0.recetasgratis.net/es/posts/4/9/2/pizza_de_arroz_77294_600.jpg"),
("Crema volteada de quinua", "200 gramos de azúcar (1 taza), 400 gramos de leche condensada, 400 gramos de leche evaporada, 4 huevos, 100 gramos de quinua", "Cocina quinua, prepara caramelo, mezcla todo, hornea a baño María.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/7/9/2/crema_volteada_de_quinua_77297_600.jpg"),
("Tarta de espinaca y acelga", "Para la masa, ½ taza de harina 000, ½ taza de harina integral (75 gramos), ½ taza de agua (120 mililitros), 1 cucharada sopera de aceite, sal a gusto, Para el relleno, 1 paquete de acelga, 1 paquete de espinaca, 1 cebolla, 1 cucharada sopera de aceite, 2 huevo duro, 1 huevo crudo, 150 gramos de queso cremoso, sal, pimienta y nuez moscada a gusto", "Prepara masa, mezcla relleno, hornea.", "1h 30m", "https://cdn0.recetasgratis.net/es/posts/0/9/2/tarta_de_espinaca_y_acelga_77290_600.jpg");
