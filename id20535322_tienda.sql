-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-12-2023 a las 23:29:50
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20535322_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensaje` int(10) NOT NULL,
  `nombre` text NOT NULL,
  `correo` varchar(25) NOT NULL,
  `asunto` text NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_mensaje`, `nombre`, `correo`, `asunto`, `mensaje`) VALUES
(0, 'oswaldo', 'Gonzalez@gmail.com', 'dsfhsk', 'jflsdjlkflejwlekf'),
(0, 'oswaldo', 'skimoustraliano@hotmail.c', 'fdslfs{}dldf', 'prueba numero 1 \r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL,
  `descuentos` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`, `activo`, `descuentos`) VALUES
(0, '', '', 0.00, 0, 0, 0),
(1, 'prueba', 'Tenis comodos para niños de la marca nike', 800.00, 1, 1, 10),
(2, 'Calcetas Nike', 'calcetas termicas en colores oscuros', 300.00, 1, 1, 0),
(3, 'Chamarra y playera blancos', 'chamarra de borrega blanca y polera de cuello tortuga con manga larga', 500.00, 1, 1, 0),
(4, 'Conjunto Amarillo de Oso', 'sudadera de color amarillo con un logo de oso del centro y un pants azul con osos en una extremidad', 350.00, 1, 1, 5),
(5, 'Conjunto camisa negra y bermuda', 'camisa negra con una jirafa animada en la bolsa y bermuda de mezclilla', 499.00, 1, 1, 10),
(6, 'Conjunto colorido', 'pants de color azul con una sudadera con naraja azul y en las mangas color naranja', 450.00, 1, 1, 7),
(7, 'Conjunto conejo blanco', 'pants y playera completamente negros con a silueta de un conejo en blanco ', 380.00, 1, 1, 3),
(8, 'Conjunto de dinosaurio', 'conjunto de pantaon y sudadera color azul con un dinosaurio bordado e antalon es color cafe', 549.99, 1, 1, 0),
(9, 'Conjuto osito', 'sueter blanco con silueta de un oso y pantalon negro', 400.00, 1, 1, 4),
(10, 'Conjunto fiestero', 'playera blanca con bolsa en el costado y bermuda de color negro', 340.00, 1, 1, 6),
(11, 'Gorros de colores', 'gorros de colores para temporadas de frio', 90.50, 1, 1, 0),
(12, 'Huaraches nike negros', 'huaraches de color negros con blanco para temporada de calor', 600.99, 1, 1, 5),
(13, 'mameluco de reno', 'mameluco calientito de borrega en forma de reno', 80.50, 1, 1, 10),
(14, 'Mameluco sin mangas', 'mamelucos de varios colores con diseños de raya horizontal', 54.50, 1, 1, 0),
(15, 'outfit playero', 'Conjunto de camisa de manga corta de colores claros y bermuda de mezclilla con lentes negros redondos', 600.00, 1, 1, 10),
(16, 'Overol mezclilla y camisa', 'overol comodo de mezclilla azul rey con camisa de color caqui', 120.00, 1, 1, 15),
(17, 'Pantalon cute', 'pantalon de mezclilla con diseños de papas a la francesa y palabras en ingles', 200.00, 1, 1, 0),
(18, 'Pants cafe y negro', 'Pants completo de tela caliente de 2 colores combinados', 150.00, 1, 1, 30),
(19, 'Pañalero de playera rayada y overol cafe', 'Mameluco que contiene un overol pequeño y gorra de colores para un diseño mas bonito', 184.00, 1, 1, 0),
(20, 'Pañalero Oso', 'Pañalero blanco con rayas negras y un overol con diseño de la cara de un oso animado', 120.00, 1, 1, 0),
(21, 'Pañaleros Arcoiris', 'playera blanca con lineas de colores de arcoiris y 2 overoles uno azul y un cafe caqui con diseño pequeño del arcoiris', 150.00, 1, 1, 12),
(22, 'tenis Toy Story', 'tenis de color blanco con figuras alucivas a la pelicula de toy story', 70.00, 1, 1, 0),
(23, 'Uniforme de basquet', 'Jerseu color negro con numeros y letras en rojo al igual que el short', 59.00, 1, 1, 15),
(24, 'conjunto de sueter y falda', 'falda pomponeada con sueter de te', 100.00, 2, 1, 20),
(25, 'Calcetas Nike', 'calcetas termicas en colores oscuros', 300.00, 2, 1, 0),
(26, 'lentes flor', 'son lentes basicos en forma de una flor blanca como el armazon', 55.00, 2, 1, 0),
(27, 'crocs de osito ', 'crocs color beige con formas de osito.', 100.00, 2, 1, 0),
(28, 'Pantalon cute', 'pantalon de mezclilla con diseños de papas a la francesa y palabras en ingles', 200.00, 2, 1, 0),
(29, 'conjunto oso rosa', 'sudadera rosa con pantalon con dseño de ositos', 400.00, 2, 1, 0),
(30, 'mamelucos cafes', 'diferentes tipos de mamelucos y shorts del mismo color', 350.00, 2, 1, 0),
(31, 'Tenis airmax Nike ', 'Tenis comodos para niños de la marca nike', 800.00, 2, 1, 10),
(32, 'mameluco de mono', 'mameluco de diseño rayado colores azul y blanco con diseño de monos', 100.00, 2, 1, 0),
(33, 'sueter de florecitas', 'sueter cocido con diseño de pequeñas florecitas', 250.00, 2, 1, 0),
(34, 'zapatitos de rosas', 'zapatitos abiertos con diseño de rosas color rojo', 150.00, 2, 1, 0),
(35, 'tutú arcoiris', 'falda tutú para niña de diseño arcoiris pero colores pasteñ', 190.00, 2, 1, 0),
(36, 'jumpers de diferentes colores', 'jumpers de colores verde,cafe y atigerado para edad de 5 a 6 años', 150.00, 2, 1, 0),
(37, 'jumper de oso pooh y playera blanca', 'jumper amarillo y playera blanca para niña de 2 a 3 años', 10.00, 2, 1, 0),
(38, 'faldita rosa', 'falda distintos tamaños con un color rosa palo', 10.00, 2, 1, 0),
(39, 'mameluco con tutú', 'mameluco color beige con figuras de estrellitas', 100.00, 2, 1, 0),
(40, 'calcetitas de algodon', 'calcetas de algodon con 3 colores el paquetito', 80.00, 2, 1, 0),
(41, 'gorro cactus', 'gorro cocido de cactacia con borla color rosa', 120.00, 2, 1, 0),
(42, 'bolsa pequeña de corazón', 'bolsa blanca con partes rosas y un corazon', 170.00, 2, 1, 0),
(43, 'conjunto blusa beige y falda cafe', 'blusa de manga larga color beige y un corazon al centro con falda color cafe', 325.00, 2, 1, 0),
(44, 'conjunto traje amarillo ', 'conjunto de diseño a cuadros color amarillo y bonete con blusa blanca y zapatos del mismo color', 225.00, 2, 1, 0),
(45, 'vestido de tirantes', 'vestido de tirantes con diseño a cuadros color gris con tinto', 300.00, 2, 1, 0),
(46, 'vestido azul claro', 'vestido color azul claro con diseño de gerberas blancas', 10.00, 2, 1, 0),
(47, 'traje amarillo', 'traje amarillo con cinturon delgado negro', 250.00, 2, 1, 0),
(48, 'traje de baño a 1 pieza', 'traje azul marino con diseño de flores', 200.00, 2, 1, 0),
(49, 'Pantalon cafe ', 'pantalon con arreglo en la parte debajo.', 200.00, 2, 1, 0),
(50, 'Peluche Brontoaurus', 'peluche de 30 centimetros de diseño cute', 50.00, 3, 1, 0),
(51, 'carrito color rosa', 'carrito para niños de edad 4-6 años', 90.00, 3, 1, 0),
(52, 'peluche de 22 centimetros', 'peluche de vaquita blanxa con partes de color rosa y cuernos amarillitos', 110.00, 3, 1, 0),
(53, 'cubeta para playa', 'la cubeta contiene pequelas palas y figuras de animales marinos para formar la figura en arena', 80.00, 3, 1, 0),
(54, 'moto francesa de madera ', 'tiene buena resistencia hasta para el niño mas jugueton', 500.00, 3, 1, 0),
(55, 'baby born', ' caja con 1 muñeca y accesorios para jugar a tener los cuidados de la misma', 400.00, 3, 1, 0),
(56, 'fisher price paquete apoyante para sensibildad', 'contiene juguetes que apoyan al bebe a desarrollar sensiblidades en su cuerpo y al mismo tiempo motricidad ', 17.00, 3, 1, 0),
(57, 'paquete bombero', 'trae un casco de bombero y una pistola de agua con mochila integrada,', 17.00, 3, 1, 0),
(58, 'camion con figuras ', 'camon que lleva figuras para desarrollar el pensamiento de esa persona especial', 10.00, 3, 1, 0),
(59, 'cocinita de madera', 'cocina con utensilios lista para jugar!!!!', 110.00, 3, 1, 0),
(60, 'caja con dinosaurios varios', '10 dinosaurios de plastico', 120.00, 3, 1, 0),
(61, 'Fisher price aprende tus primeras palabras', 'juego con sonido y actividades buenas para el bebe', 520.00, 3, 1, 0),
(62, 'juguetes para niños de 0 a 6 meses', 'juguetes para desarrollar motricidad en esa personita especial', 110.00, 3, 1, 0),
(63, 'carro a control remoto', 'carro manejado por control remoto cargado por pilas', 500.00, 3, 1, 0),
(64, 'kit de limpieza', 'kit de productos de limpieza basicos', 100.00, 3, 1, 0),
(65, 'movible de dragon ball z ', 'movible para cuna de dragon ball z junto a las esferas del dragon', 120.00, 3, 1, 0),
(66, 'nave espacial tejida a mano', 'peluche de nave espacial', 150.00, 3, 1, 0),
(67, 'juguete empujador para caminar', 'jueguete de nube que muestra un arcoirirs al caminar', 699.00, 3, 1, 0),
(68, 'carrito super mercado', 'carrito lleno de productos del super mercado ', 210.00, 3, 1, 0),
(69, 'cubo de figuras', 'cubo con espacios donde entra las figuras geometricas ', 250.00, 3, 1, 0),
(70, 'juguetes de madera', 'varios juguetes de madera como cuentas,biberones o formacion de figuras', 110.00, 3, 1, 0),
(71, 'mochila azul con dinosaurios', 'mochila de capacidad media con diseño de varios dinosaurios', 18.00, 4, 1, 0),
(72, 'moisés de color negro con gris', 'moises grande con juguete colgante y mezedor  ', 18.00, 4, 1, 0),
(73, 'Vaso entrenador negro', 'vaso entrenador con capacidad de 600 ml y doble agarradera para mas comodidad', 17.00, 4, 1, 0),
(74, 'andadera', 'carro que entrena al bebe para que empiece a dar sus primeros pasos', 750.00, 4, 1, 0),
(75, 'babero', 'se utiliza para qu cuando este comiendo el bebe no manche de comida su ropa', 70.00, 4, 1, 0),
(76, 'biberos', 'recipiente transparente que se utiliza para la lactancia artificial de bebe', 90.00, 4, 1, 0),
(77, 'cangurera cafe', 'marca gucci, mantiene al bebe sentado a donde tu vayas ya que o cargas en tu pecho', 540.00, 4, 1, 0),
(78, 'cangurera', 'mantiene sentado a tu bebe a donde tu vayas ya que o cargas en tu pecho ', 399.00, 4, 1, 0),
(79, 'carreola rosa', 'transporta a tu bebe contigo, con mucha seguridad ', 1800.00, 4, 1, 0),
(80, 'cuna mesedora', 'cuna con juegos para el bebe en caso de no dormir', 580.00, 4, 1, 0),
(81, 'kit entrenador', 'utensilios para que el bebe aprenda a comer sin mancharse', 75.00, 4, 1, 0),
(82, 'kit esencial', 'contiene un biberon y un chupon', 72.00, 4, 1, 0),
(83, 'kit para el cabello del bebe', 'contiene lo basico para el peinado de un bebe', 72.00, 4, 1, 0),
(84, 'pañalera gris', 'bolso para guardar cualquier cosa de tu bebe en color gris', 340.00, 4, 1, 0),
(85, 'pañalera', 'bolso para guardar cualquier cosa de tu bebe en color cafe con dibujos rojos y gris ', 370.00, 4, 1, 0),
(86, 'par de carreolas', 'incluye dos carreolas en color grs con un fondo azul y naranja', 2500.00, 4, 1, 0),
(87, 'Portabebe', 'transporte manual para tu bebe', 750.00, 4, 1, 0),
(88, 'silla alta de bebe', 'silla en la que podra comer tu bebe, es segura para el', 700.00, 4, 1, 0),
(89, 'vaso entrenador', 'recipiente que es usado para qu el bebe tome cualquier bebida sin ayuda', 85.00, 4, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(3) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `correo`, `password`) VALUES
(1, 'user', 'user'),
(2, 'user1', 'user1'),
(3, 'user2', 'user2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `folio` int(5) NOT NULL,
  `ID_producto` int(3) NOT NULL,
  `fecha` date DEFAULT current_timestamp(),
  `cantidad` int(3) DEFAULT NULL,
  `importe` int(14) DEFAULT NULL,
  `pagado` tinyint(1) DEFAULT NULL,
  `unitario` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`folio`, `ID_producto`, `fecha`, `cantidad`, `importe`, `pagado`, `unitario`) VALUES
(2, 4, '2023-03-15', 1, 1920, 1, 350),
(3, 4, '2023-03-15', 1, 1920, 1, 350),
(4, 4, '2023-03-15', 1, 1920, 1, 350),
(5, 4, '2023-03-15', 1, 1920, 1, 350),
(6, 4, '2023-03-15', 1, 1920, 1, 350),
(7, 4, '2023-03-15', 1, 1920, 1, 350),
(8, 4, '2023-03-15', 1, 1920, 1, 350),
(9, 4, '2023-03-15', 1, 1920, 1, 350),
(10, 4, '2023-03-15', 1, 1920, 1, 350),
(11, 4, '2023-03-15', 1, 1920, 1, 350),
(12, 4, '2023-03-15', 1, 1920, 1, 350),
(13, 4, '2023-03-15', 1, 1920, 1, 350),
(14, 4, '2023-03-15', 1, 1920, 1, 350),
(15, 4, '2023-03-15', 1, 1920, 1, 350),
(16, 4, '2023-03-15', 1, 1920, 1, 350),
(17, 4, '2023-03-15', 1, 1920, 1, 350),
(18, 4, '2023-03-15', 1, 1920, 1, 350),
(19, 4, '2023-03-15', 1, 1920, 1, 350),
(20, 4, '2023-03-15', 1, 1200, 1, 350),
(21, 4, '2023-03-15', 1, 1200, 1, 350),
(23, 1, '2023-03-15', 1, 720, 1, 800),
(24, 1, '2023-03-15', 1, 720, 1, 800),
(25, 1, '2023-03-15', 1, 720, 1, 800),
(26, 1, '2023-03-15', 1, 720, 1, 800),
(27, 1, '2023-03-15', 1, 720, 1, 800),
(28, 1, '2023-03-15', 1, 720, 1, 800),
(29, 1, '2023-03-15', 1, 720, 1, 800),
(30, 1, '2023-03-15', 3, 2160, 1, 800),
(46, 2, '2023-03-15', 2, 3980, 1, 300),
(47, 2, '2023-03-15', 2, 3980, 1, 300),
(48, 2, '2023-03-15', 2, 3980, 1, 300),
(49, 2, '2023-03-15', 2, 3980, 1, 300),
(50, 2, '2023-03-15', 2, 3980, 1, 300),
(51, 2, '2023-03-15', 2, 3980, 1, 300),
(52, 2, '2023-03-15', 2, 3980, 1, 300),
(53, 2, '2023-03-15', 2, 3980, 1, 300),
(54, 2, '2023-03-15', 2, 3980, 1, 300),
(55, 2, '2023-03-15', 2, 3980, 1, 300),
(56, 2, '2023-03-15', 2, 3980, 1, 300),
(57, 2, '2023-03-15', 2, 1100, 1, 300),
(58, 2, '2023-03-15', 1, 1520, 1, 300),
(59, 2, '2023-03-15', 1, 1520, 1, 300),
(60, 2, '2023-03-15', 1, 1520, 1, 300),
(61, 2, '2023-03-15', 1, 1520, 1, 300),
(62, 2, '2023-03-15', 1, 1520, 1, 300),
(63, 2, '2023-03-15', 1, 1520, 1, 300),
(64, 2, '2023-03-15', 1, 1520, 1, 300),
(65, 2, '2023-03-15', 1, 1520, 1, 300),
(66, 2, '2023-03-15', 1, 1520, 1, 300),
(67, 2, '2023-03-15', 1, 1520, 1, 300),
(68, 2, '2023-03-15', 1, 1520, 1, 300),
(69, 2, '2023-03-15', 1, 1520, 1, 300),
(70, 2, '2023-03-15', 1, 1520, 1, 300),
(71, 2, '2023-03-15', 1, 1520, 1, 300),
(72, 2, '2023-03-15', 1, 1520, 1, 300),
(73, 2, '2023-03-15', 1, 300, 1, 300),
(74, 2, '2023-03-15', 1, 300, 1, 300),
(75, 2, '2023-03-15', 1, 300, 1, 300),
(76, 2, '2023-03-15', 1, 300, 1, 300),
(77, 2, '2023-03-15', 1, 300, 1, 300),
(78, 2, '2023-03-15', 2, 600, 1, 300),
(79, 2, '2023-03-15', 2, 600, 1, 300),
(80, 2, '2023-03-15', 2, 600, 1, 300),
(81, 2, '2023-03-15', 2, 600, 1, 300),
(82, 2, '2023-03-16', 2, 600, 1, 300),
(83, 2, '2023-03-16', 2, 600, 1, 300),
(84, 2, '2023-03-16', 2, 600, 1, 300),
(85, 2, '2023-03-16', 2, 600, 1, 300),
(86, 2, '2023-03-16', 2, 600, 1, 300),
(87, 2, '2023-03-16', 2, 600, 1, 300),
(88, 2, '2023-03-16', 2, 600, 1, 300),
(89, 2, '2023-03-16', 2, 600, 1, 300),
(90, 2, '2023-03-21', 2, 600, 1, 300),
(91, 2, '2023-03-21', 2, 600, 1, 300),
(92, 2, '2023-03-21', 2, 600, 1, 300),
(93, 2, '2023-03-21', 2, 600, 1, 300),
(94, 2, '2023-03-21', 2, 600, 1, 300),
(95, 2, '2023-03-21', 2, 600, 1, 300),
(96, 3, '2023-03-21', 1, 1520, 1, 500),
(97, 3, '2023-03-21', 1, 1520, 1, 500),
(98, 3, '2023-03-21', 1, 1520, 1, 500),
(99, 3, '2023-03-21', 1, 1520, 1, 500),
(100, 3, '2023-03-21', 1, 1520, 1, 500),
(101, 3, '2023-03-21', 1, 1520, 1, 500),
(102, 3, '2023-03-21', 1, 1520, 1, 500),
(103, 3, '2023-03-21', 1, 1520, 1, 500),
(104, 3, '2023-03-21', 1, 1520, 1, 500),
(105, 1, '2023-03-28', 1, 1020, 1, 800),
(106, 1, '2023-03-28', 1, 1020, 1, 800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_neta`
--

CREATE TABLE `venta_neta` (
  `folio` int(4) NOT NULL,
  `Id_producto` int(4) DEFAULT NULL,
  `fecha` varchar(25) DEFAULT current_timestamp(),
  `Importe_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta_neta`
--

INSERT INTO `venta_neta` (`folio`, `Id_producto`, `fecha`, `Importe_total`) VALUES
(1, 3, NULL, 1520),
(2, 3, NULL, 1520),
(3, 3, '2023-03-21 18:57:17', 1520),
(4, 3, '2023-03-21 18:57:22', 1520),
(5, 3, '2023-03-21 18:57:58', 1520),
(6, 3, '2023-03-21 18:58:01', 1520),
(7, 3, '2023-03-21 19:01:33', 1520),
(8, 3, '2023-03-21 19:01:39', 1520),
(9, 1, '2023-03-28 14:21:46', 1020),
(10, 1, '2023-03-28 14:22:10', 1020);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
