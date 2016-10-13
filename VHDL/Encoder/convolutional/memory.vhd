library ieee;
use ieee.std_logic_1164.all;

entity ROM is
  port ( address : in std_logic_vector(7 downto 0);
         data : out std_logic );
end entity ROM;

architecture behavioral of ROM is
  type mem is array ( 0 to 155) of std_logic;
  constant my_Rom : mem := (
		0 => '0',
		1 => '0',
		2 => '0',
		3 => '0',
		4 => '0',
		5 => '0',
		6 => '0',
		7 => '0',
		8 => '0',
		9 => '0',
		10 => '0',
		11 => '0',
		12 => '0',
		13 => '0',
		14 => '1',
		15 => '0',
		16 => '1',
		17 => '0',
		18 => '1',
		19 => '0',
		20 => '1',
		21 => '0',
		22 => '1',
		23 => '0',
		24 => '1',
		25 => '0',
		26 => '1',
		27 => '0',
		28 => '1',
		29 => '0',
		30 => '1',
		31 => '0',
		32 => '1',
		33 => '0',
		34 => '1',
		35 => '0',
		36 => '1',
		37 => '0',
		38 => '1',
		39 => '0',
		40 => '1',
		41 => '0',
		42 => '1',
		43 => '0',
		44 => '1',
		45 => '0',
		46 => '1',
		47 => '0',
		48 => '1',
		49 => '0',
		50 => '1',
		51 => '0',
		52 => '1',
		53 => '0',
		54 => '1',
		55 => '0',
		56 => '1',
		57 => '0',
		58 => '1',
		59 => '0',
		60 => '1',
		61 => '0',
		62 => '1',
		63 => '0',
		64 => '1',
		65 => '0',
		66 => '1',
		67 => '0',
		68 => '1',
		69 => '0',
		70 => '1',
		71 => '0',
		72 => '1',
		73 => '0',
		74 => '1',
		75 => '0',
		76 => '1',
		77 => '0',
		78 => '1',
		79 => '0',
		80 => '1',
		81 => '0',
		82 => '1',
		83 => '0',
		84 => '1',
		85 => '0',
		86 => '1',
		87 => '0',
		88 => '1',
		89 => '0',
		90 => '1',
		91 => '0',
		92 => '1',
		93 => '0',
		94 => '1',
		95 => '0',
		96 => '1',
		97 => '0',
		98 => '1',
		99 => '0',
		100 => '1',
		101 => '0',
		102 => '1',
		103 => '0',
		104 => '1',
		105 => '0',
		106 => '1',
		107 => '0',
		108 => '1',
		109 => '0',
		110 => '1',
		111 => '0',
		112 => '1',
		113 => '0',
		114 => '1',
		115 => '0',
		116 => '1',
		117 => '0',
		118 => '1',
		119 => '0',
		120 => '1',
		121 => '0',
		122 => '1',
		123 => '0',
		124 => '1',
		125 => '0',
		126 => '1',
		127 => '0',
		128 => '0',
		129 => '0',
		130 => '0',
		131 => '0',
		132 => '0',
		133 => '1',
		134 => '0',
		135 => '0',
		136 => '0',
		137 => '0',
		138 => '0',
		139 => '0',
		140 => '0',
		141 => '0',
		142 => '0',
		143 => '0',
		144 => '0',
		145 => '1',
		146 => '1',
		147 => '1',
		148 => '1',
		149 => '1',
		150 => '0',
		151 => '0',
		152 => '0',
		153 => '0',
		154 => '0',
		155 => '0');
begin
   process (address)
   begin
     case address is
		when "00000000" => data <= my_rom(0);
		when "00000001" => data <= my_rom(1);
		when "00000010" => data <= my_rom(2);
		when "00000011" => data <= my_rom(3);
		when "00000100" => data <= my_rom(4);
		when "00000101" => data <= my_rom(5);
		when "00000110" => data <= my_rom(6);
		when "00000111" => data <= my_rom(7);
		when "00001000" => data <= my_rom(8);
		when "00001001" => data <= my_rom(9);
		when "00001010" => data <= my_rom(10);
		when "00001011" => data <= my_rom(11);
		when "00001100" => data <= my_rom(12);
		when "00001101" => data <= my_rom(13);
		when "00001110" => data <= my_rom(14);
		when "00001111" => data <= my_rom(15);
		when "00010000" => data <= my_rom(16);
		when "00010001" => data <= my_rom(17);
		when "00010010" => data <= my_rom(18);
		when "00010011" => data <= my_rom(19);
		when "00010100" => data <= my_rom(20);
		when "00010101" => data <= my_rom(21);
		when "00010110" => data <= my_rom(22);
		when "00010111" => data <= my_rom(23);
		when "00011000" => data <= my_rom(24);
		when "00011001" => data <= my_rom(25);
		when "00011010" => data <= my_rom(26);
		when "00011011" => data <= my_rom(27);
		when "00011100" => data <= my_rom(28);
		when "00011101" => data <= my_rom(29);
		when "00011110" => data <= my_rom(30);
		when "00011111" => data <= my_rom(31);
		when "00100000" => data <= my_rom(32);
		when "00100001" => data <= my_rom(33);
		when "00100010" => data <= my_rom(34);
		when "00100011" => data <= my_rom(35);
		when "00100100" => data <= my_rom(36);
		when "00100101" => data <= my_rom(37);
		when "00100110" => data <= my_rom(38);
		when "00100111" => data <= my_rom(39);
		when "00101000" => data <= my_rom(40);
		when "00101001" => data <= my_rom(41);
		when "00101010" => data <= my_rom(42);
		when "00101011" => data <= my_rom(43);
		when "00101100" => data <= my_rom(44);
		when "00101101" => data <= my_rom(45);
		when "00101110" => data <= my_rom(46);
		when "00101111" => data <= my_rom(47);
		when "00110000" => data <= my_rom(48);
		when "00110001" => data <= my_rom(49);
		when "00110010" => data <= my_rom(50);
		when "00110011" => data <= my_rom(51);
		when "00110100" => data <= my_rom(52);
		when "00110101" => data <= my_rom(53);
		when "00110110" => data <= my_rom(54);
		when "00110111" => data <= my_rom(55);
		when "00111000" => data <= my_rom(56);
		when "00111001" => data <= my_rom(57);
		when "00111010" => data <= my_rom(58);
		when "00111011" => data <= my_rom(59);
		when "00111100" => data <= my_rom(60);
		when "00111101" => data <= my_rom(61);
		when "00111110" => data <= my_rom(62);
		when "00111111" => data <= my_rom(63);
		when "01000000" => data <= my_rom(64);
		when "01000001" => data <= my_rom(65);
		when "01000010" => data <= my_rom(66);
		when "01000011" => data <= my_rom(67);
		when "01000100" => data <= my_rom(68);
		when "01000101" => data <= my_rom(69);
		when "01000110" => data <= my_rom(70);
		when "01000111" => data <= my_rom(71);
		when "01001000" => data <= my_rom(72);
		when "01001001" => data <= my_rom(73);
		when "01001010" => data <= my_rom(74);
		when "01001011" => data <= my_rom(75);
		when "01001100" => data <= my_rom(76);
		when "01001101" => data <= my_rom(77);
		when "01001110" => data <= my_rom(78);
		when "01001111" => data <= my_rom(79);
		when "01010000" => data <= my_rom(80);
		when "01010001" => data <= my_rom(81);
		when "01010010" => data <= my_rom(82);
		when "01010011" => data <= my_rom(83);
		when "01010100" => data <= my_rom(84);
		when "01010101" => data <= my_rom(85);
		when "01010110" => data <= my_rom(86);
		when "01010111" => data <= my_rom(87);
		when "01011000" => data <= my_rom(88);
		when "01011001" => data <= my_rom(89);
		when "01011010" => data <= my_rom(90);
		when "01011011" => data <= my_rom(91);
		when "01011100" => data <= my_rom(92);
		when "01011101" => data <= my_rom(93);
		when "01011110" => data <= my_rom(94);
		when "01011111" => data <= my_rom(95);
		when "01100000" => data <= my_rom(96);
		when "01100001" => data <= my_rom(97);
		when "01100010" => data <= my_rom(98);
		when "01100011" => data <= my_rom(99);
		when "01100100" => data <= my_rom(100);
		when "01100101" => data <= my_rom(101);
		when "01100110" => data <= my_rom(102);
		when "01100111" => data <= my_rom(103);
		when "01101000" => data <= my_rom(104);
		when "01101001" => data <= my_rom(105);
		when "01101010" => data <= my_rom(106);
		when "01101011" => data <= my_rom(107);
		when "01101100" => data <= my_rom(108);
		when "01101101" => data <= my_rom(109);
		when "01101110" => data <= my_rom(110);
		when "01101111" => data <= my_rom(111);
		when "01110000" => data <= my_rom(112);
		when "01110001" => data <= my_rom(113);
		when "01110010" => data <= my_rom(114);
		when "01110011" => data <= my_rom(115);
		when "01110100" => data <= my_rom(116);
		when "01110101" => data <= my_rom(117);
		when "01110110" => data <= my_rom(118);
		when "01110111" => data <= my_rom(119);
		when "01111000" => data <= my_rom(120);
		when "01111001" => data <= my_rom(121);
		when "01111010" => data <= my_rom(122);
		when "01111011" => data <= my_rom(123);
		when "01111100" => data <= my_rom(124);
		when "01111101" => data <= my_rom(125);
		when "01111110" => data <= my_rom(126);
		when "01111111" => data <= my_rom(127);
		when "10000000" => data <= my_rom(128);
		when "10000001" => data <= my_rom(129);
		when "10000010" => data <= my_rom(130);
		when "10000011" => data <= my_rom(131);
		when "10000100" => data <= my_rom(132);
		when "10000101" => data <= my_rom(133);
		when "10000110" => data <= my_rom(134);
		when "10000111" => data <= my_rom(135);
		when "10001000" => data <= my_rom(136);
		when "10001001" => data <= my_rom(137);
		when "10001010" => data <= my_rom(138);
		when "10001011" => data <= my_rom(139);
		when "10001100" => data <= my_rom(140);
		when "10001101" => data <= my_rom(141);
		when "10001110" => data <= my_rom(142);
		when "10001111" => data <= my_rom(143);
		when "10010000" => data <= my_rom(144);
		when "10010001" => data <= my_rom(145);
		when "10010010" => data <= my_rom(146);
		when "10010011" => data <= my_rom(147);
		when "10010100" => data <= my_rom(148);
		when "10010101" => data <= my_rom(149);
		when "10010110" => data <= my_rom(150);
		when "10010111" => data <= my_rom(151);
		when "10011000" => data <= my_rom(152);
		when "10011001" => data <= my_rom(153);
		when "10011010" => data <= my_rom(154);
		when "10011011" => data <= my_rom(155);
      when others => data <= '0';
	 end case;
  end process;
end architecture behavioral;