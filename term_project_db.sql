-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 02:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `term_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `species` varchar(100) NOT NULL,
  `sub_species` varchar(100) DEFAULT NULL,
  `age` int(10) UNSIGNED DEFAULT NULL,
  `ownner_id` int(10) UNSIGNED DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `other_contact` varchar(100) DEFAULT NULL,
  `picture` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `gender`, `name`, `species`, `sub_species`, `age`, `ownner_id`, `phone`, `other_contact`, `picture`) VALUES
(1, 'male', 'Lio', 'Cat', 'British Shorthair', 2, 12, '0978845125', 'Line:@123456', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3C0OwT_meau3ARecJ7D5g_ZNuT7L5ilF2ZL6DjeEPzfK9PGNutt5fog1_zC5H-PDkm-g&usqp=CAU'),
(2, 'female', 'Bella', 'Dog', 'Labrador Retriever', 3, 15, '0987654321', 'WhatsApp:+987654', 'https://lh3.googleusercontent.com/proxy/tL_etY4o6C7QvGT7i1lQYNgtHiUD3NhVY6FKnOFKkHYksUWZz7YrDv9VYS15njlznatV13ky3ZkOyzFRTEBlYMat2ZZIjvHE0BcmPanLkeg1zObeEDhqVXn2msTWSWLSzQJT3SH9jje9D5Nj9UD-QpTsgHzcsXYQeX9OXuBYwc4T7PXLkQ2xm3wEC6C-nyOP'),
(3, 'male', 'Max', 'Hamster', 'Syrian', 1, 12, '0898765432', 'WeChat:MaxHamster', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Male_hamster.jpg/800px-Male_hamster.jpg?20210125030650'),
(4, 'female', 'Daisy', 'Cat', 'Siamese', 2, 18, '0932109876', 'Telegram:@DaisyCat', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnkAmhC0gnsyMAyBQfoxz8SnNScR4yxYTCsP_6Kp7MB6VdyMgc_SCvsmiaRoyOGF0rJwg&usqp=CAU'),
(5, 'male', 'Rocky', 'Dog', 'German Shepherd', 4, 20, '0865432109', 'Signal:+123456789', 'https://www.germanshepherdrescue.co.uk/dogimages/rocky-040223-1.jpeg'),
(6, 'female', 'Chloe', 'Rabbit', 'Holland Lop', 1, 15, '0954321098', 'Viber:@ChloeBunny', 'https://gumtreeau-res.cloudinary.com/image/private/t_$_57/gumtree/cd74eadc-3f89-496c-a599-1994583d18e2.jpg'),
(7, 'male', 'Gizmo', 'Guinea Pig', 'American', 2, 18, '0923456789', 'Line:@GizmoPig', 'https://townsquare.media/site/920/files/2023/11/attachment-GIzmo-2web.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89'),
(8, 'female', 'Nala', 'Cat', 'Persian', 3, 12, '0812345678', 'WhatsApp:+123456789', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn8SUAEmjmTzvkWlUdVNxUEXp9iRihpIF8fQ&usqp=CAU'),
(9, 'male', 'Duke', 'Dog', 'Golden Retriever', 3, 20, '0945678901', 'Telegram:@DukeDog', 'https://www.goldenrescue.com/wp-content/uploads/2024/02/4.jpg'),
(10, 'female', 'Luna', 'Cat', 'Maine Coon', 1, 15, '0876543210', 'WeChat:LunaCoon', 'https://www.ellevetsciences.com/wp-content/uploads/2022/08/ev-blog-mainecoon-header-1024x683.jpg'),
(11, 'male', 'Oliver', 'Rabbit', 'Netherland Dwarf', 2, 12, '0998765432', 'Signal:@OliverBunny', 'https://images.squarespace-cdn.com/content/v1/5f11acca056d9b31bdc66141/1615231975008-W01J1YOKDNMNKWUK25A2/image-asset.octet-stream?format=500w'),
(12, 'female', 'Maggie', 'Dog', 'Beagle', 4, 18, '0987654321', 'Line:@MaggieBeagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP5PWPWrdn5La1jsyVvPetrbXaX94ssiS38w&usqp=CAU'),
(13, 'male', 'Charlie', 'Cat', 'Ragdoll', 2, 20, '0965432109', 'WhatsApp:+987654321', 'https://www.floppycats.com/wp-content/uploads/2020/08/Seal-Mitted-with-an-hourglass-blaze-Ragdoll-Cat-Charlie-on-brick-pillar-outside-IMG_4706-scaled.webp'),
(14, 'female', 'Peanut', 'Hamster', 'Dwarf', 1, 15, '0923456789', 'Telegram:@PeanutHamster', 'https://i.pinimg.com/originals/46/df/3d/46df3d1a90ae9918431fbf4843ccdd42.jpg'),
(15, 'male', 'Cooper', 'Dog', 'Boxer', 3, 12, '0890123456', 'WeChat:@CooperBoxer', 'https://media-be.chewy.com/wp-content/uploads/2021/04/18144454/iStock-1257560195-821x615.jpg'),
(16, 'female', 'Willow', 'Cat', 'Bengal', 2, 18, '0854321098', 'Viber:@WillowBengal', 'https://bengalcatworld.com/wp-content/uploads/2013/04/Tabby-Cat-vs-Bengal-Cat-2.jpg'),
(17, 'male', 'Teddy', 'Rabbit', 'Mini Rex', 1, 20, '0912345678', 'Signal:@TeddyRex', 'https://cdn-fastly.petguide.com/media/2022/02/16/8261000/mini-rex-rabbit.jpg?size=720x845&nocrop=1'),
(18, 'female', 'Zoey', 'Dog', 'Poodle', 4, 15, '0976543210', 'Line:@ZoeyPoodle', 'https://cdn.greenfieldpuppies.com/wp-content/uploads/2024/02/Zoey-F1-2.jpg'),
(19, 'male', 'Simba', 'Cat', 'Sphynx', 3, 12, '0945678901', 'WhatsApp:+123456789', 'https://images.prismic.io/trustedhousesitters/e357e3bb-7b58-4b07-a290-7331bd850709_Sphynx+Cat+Names+Image+1.jpg?auto=compress'),
(20, 'female', 'Ruby', 'Guinea Pig', 'Abyssinian', 2, 18, '0987654321', 'Telegram:@RubyPig', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Peruvian_cavy.jpg/640px-Peruvian_cavy.jpg'),
(21, 'male', 'Loki', 'Dog', 'Siberian Husky', 2, 20, '0965432109', 'WeChat:@LokiHusky', 'https://cdn.rescuegroups.org/9047/pictures/animals/13731/13731430/62508874.jpg?width=500'),
(22, 'female', 'Misty', 'Cat', 'Scottish Fold', 1, 15, '0923456789', 'Viber:@MistyFold', 'https://i.pinimg.com/736x/48/27/13/4827136674d8a27403fd2591dabc5453.jpg'),
(23, 'male', 'Oreo', 'Rabbit', 'Flemish Giant', 3, 12, '0876543210', 'Line:@OreoGiant', 'https://animalcorner.org/wp-content/uploads/2020/08/Flemish-Giant-Rabbit-1-4053547.jpg'),
(24, 'female', 'Mia', 'Dog', 'Dachshund', 4, 18, '0890123456', 'Signal:@MiaDachshund', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzys1DurlV1Zg16i43Qjjda4Y369ltKlHFmg&usqp=CAU'),
(25, 'male', 'Jasper', 'Cat', 'Burmese', 2, 20, '0987654321', 'WhatsApp:+987654321', 'https://res.cloudinary.com/petrescue/image/upload/b_auto:predominant'),
(26, 'female', 'Stella', 'Hamster', 'Roborovski', 1, 15, '0945678901', 'Telegram:@StellaHamster', 'https://preview.redd.it/n562sg6zips91.jpg?width=640&crop=smart&auto=webp&s=0b33b3983d532a8ab309f85be184985b300ac03e'),
(27, 'male', 'Cody', 'Dog', 'Shih Tzu', 3, 12, '0965432109', 'WeChat:@CodyShihTzu', 'https://i.pinimg.com/originals/0e/f2/fb/0ef2fbb353bc79af6f135f614a0aa555.jpg'),
(28, 'female', 'Sassy', 'Rabbit', 'Lionhead', 2, 18, '0912345678', 'Line:@SassyLionhead', 'https://images.saymedia-content.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTkzMzUyMTQzNDAxMzk2MTMx/petology-lionhead-bunny-rabbits-all-about-these-cute-and-unusual-bunnies.png'),
(29, 'male', 'Milo', 'Cat', 'Abyssinian', 1, 20, '0923456789', 'WhatsApp:+123456789', 'https://purebredsplus.org/wp-content/uploads/2017/07/delilah4-1.jpg'),
(30, 'female', 'Daisy', 'Guinea Pig', 'Peruvian', 3, 15, '0876543210', 'Telegram:@DaisyGuineaPig', 'https://cdn.shopify.com/s/files/1/0530/3762/9610/files/Peruvian_guinea_pig_on_the_floor_1024x1024.png?v=1684492077'),
(31, 'male', 'Rusty', 'Dog', 'Rottweiler', 4, 12, '0890123456', 'Signal:@RustyRottweiler', 'https://eyams5v2mpc.exactdn.com/wp-content/uploads/2024/01/Radller-male-Rottweiler-puppy-for-sale-4.jpg?strip=all&lossy=1&ssl=1&resize=1280%2C853'),
(32, 'female', 'Cleo', 'Cat', 'Turkish Van', 2, 20, '0945678901', 'WeChat:@CleoVan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU4qFyq7T7AHHa8FcVS8LzGpwnusedSA-vCML2zzHwg2DH9y5BdmQmKWwzH5bsLmeMrBQ&usqp=CAU'),
(33, 'male', 'Winston', 'Rabbit', 'Holland Lop', 1, 15, '0987654321', 'Viber:@WinstonBunny', 'https://www.petz.world/wp-content/uploads/2020/07/9429.png'),
(34, 'female', 'Zoey', 'Dog', 'Chihuahua', 3, 18, '0923456789', 'Line:@ZoeyChihuahua', 'https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/55566644/3/?bust=1654125650&width=720'),
(35, 'male', 'Rocky', 'Cat', 'Exotic Shorthair', 2, 20, '0965432109', 'WhatsApp:+987654321', 'https://www.catster.com/wp-content/uploads/2023/11/american-shorthair-cat-lying-on-the-floor_Apisit-Hrpp-Shutterstock.jpg'),
(36, 'female', 'Luna', 'Hamster', 'Chinese', 1, 15, '0912345678', 'Telegram:@LunaHamster', 'https://exoticanimalsupplies.com/wp-content/uploads/2018/11/hamster-names.jpg'),
(37, 'male', 'Duke', 'Dog', 'Bulldog', 4, 12, '0876543210', 'WeChat:@DukeBulldog', 'https://rockykanaka.com/wp-content/uploads/2023/06/Bulldog-Names.jpg'),
(38, 'female', 'Lu', 'Rabbit', 'Mini Lop', 2, 18, '0987654321', 'Viber:@BellaLop', 'https://preview.redd.it/5bmz9xm6z7v61.jpg?width=640&crop=smart&auto=webp&s=a4bd823559e1e5e8cf92ed3ffb974ebd259bb06d'),
(39, 'male', 'Oliver', 'Cat', 'Abyssinian', 3, 20, '0945678901', 'Signal:@OliverAbyssinian', 'https://i.redd.it/ttx56ektw0241.jpg'),
(40, 'female', 'Sophie', 'Guinea Pig', 'American', 2, 15, '0965432109', 'Line:@SophiePig', 'https://ahs.nyc3.cdn.digitaloceanspaces.com/live/public/styles/animal_450x330/public/adoption/images/large/2023/02/28/61d6743b-3fb2-448f-b8f6-a61fe0485fe9.jpg?h=8a14a818&itok=wm1bF4P7'),
(41, 'male', 'Leo', 'Dog', 'Maltese', 2, 12, '0987654321', 'WhatsApp:+123456789', 'https://www.pageant.dog/ph/u/583080846380642/5830808471688336/c96e1e03bc663f160e9e7584a7f3fd391.jpg?align=51'),
(42, 'female', 'Nala', 'Cat', 'Himalayan', 1, 18, '0945678901', 'Telegram:@NalaHimalayan', 'https://cats.com/wp-content/uploads/2019/01/Himalyan-cat.jpg'),
(43, 'male', 'Max', 'Rabbit', 'Flemish Giant', 3, 20, '0923456789', 'WeChat:@MaxGiant', 'https://www.travelandleisure.com/thmb/z8ZjYQQQZhzOY26eaO8WyP5Y06Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/header-sfo-stress-relief-bunny-SFOBUNNY0322-838273be0c1d4e34ade7d73340bb2f10.jpg'),
(44, 'female', 'Daisy', 'Dog', 'Shiba Inu', 4, 15, '0912345678', 'Signal:@DaisyShiba', 'https://res.cloudinary.com/lancaster-puppies-laravel/image/upload/v1671046967/breeds/iqjzbcz8sjl7xflgbimw.jpg'),
(45, 'male', 'Simba', 'Cat', 'Russian Blue', 2, 12, '0876543210', 'Viber:@SimbaBlue', 'https://images.ctfassets.net/7hqiona4456t/6uLpXfCs9VdLsdQgJ27pcC/7297b7da4624b1629555e1fbe08d183c/pexels-photo-12402554.jpeg'),
(46, 'female', 'Luna', 'Hamster', 'Teddy Bear', 1, 18, '0965432109', 'Line:@LunaTeddy', 'https://a-z-animals.com/media/2021/09/teddy-bear-hamster4-1024x535.jpg'),
(47, 'male', 'Tucker', 'Dog', 'Cocker Spaniel', 3, 20, '0945678901', 'WhatsApp:+987654321', 'https://www.dogstrust.org.uk/images/800x600/dogs/1268633/0686M00000lOcHVQA0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `name_title` varchar(30) DEFAULT NULL,
  `name_first` varchar(100) DEFAULT NULL,
  `name_last` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `md5` varchar(100) DEFAULT NULL,
  `sha1` varchar(100) DEFAULT NULL,
  `sha256` varchar(100) DEFAULT NULL,
  `picture_large` varchar(100) DEFAULT NULL,
  `picture_medium` varchar(100) DEFAULT NULL,
  `picture_thumbnail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gender`, `name_title`, `name_first`, `name_last`, `country`, `email`, `dob`, `uuid`, `username`, `password`, `md5`, `sha1`, `sha256`, `picture_large`, `picture_medium`, `picture_thumbnail`) VALUES
(1, NULL, NULL, 'Natchaphon', 'Panasantikun', NULL, 'nat@gmail.com', NULL, NULL, NULL, '55555', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
