
function gfinvert(i){
	var o;
	if (i == "0000")
		o = "0000";
	else if (i == "0001")
		o = "0001";
	else if (i == "0010")
		o = "1001";
	else if (i == "0011")
		o = "1110";
	else if (i == "0100")
		o = "1101";
	else if (i == "0101")
		o = "1011";
	else if (i == "0110")
		o = "0111";
	else if (i == "0111")
		o = "0110";
	else if (i == "1000")
		o = "1111";
	else if (i == "1001")
		o = "0010";
	else if (i == "1010")
		o = "1100";
	else if (i == "1011")
		o = "0101";
	else if (i == "1100")
		o = "1010";
	else if (i == "1101")
		o = "0100";
	else if (i == "1110")
		o = "0011";
	else if (i == "1111")
		o = "1000";
	return o;
}

function gfmultiplication ( x, y){
	var o;
	if (x == "0000") { 
		o = "0000";}
 	else if (x == "0001") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "0001";}
 			if (y == "0010" ){ o = "0010";}
 			if (y == "0011" ){ o = "0011";}
 			if (y == "0100" ){ o = "0100";}
 			if (y == "0101" ){ o = "0101";}
 			if (y == "0110" ){ o = "0110";}
 			if (y == "0111" ){ o = "0111";}
 			if (y == "1000" ){ o = "1000";}
 			if (y == "1001" ){ o = "1001";}
 			if (y == "1010" ){ o = "1010";}
 			if (y == "1011" ){ o = "1011";}
 			if (y == "1100" ){ o = "1100";}
 			if (y == "1101" ){ o = "1101";}
 			if (y == "1110" ){ o = "1110";}
 			if (y == "1111" ){ o = "1111";}
			
 		}
 	else if  (x == "0010") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "0010";}
 			if (y == "0010" ){ o = "0100";}
 			if (y == "0011" ){ o = "0110";}
 			if (y == "0100" ){ o = "1000";}
 			if (y == "0101" ){ o = "1010";}
 			if (y == "0110" ){ o = "1100";}
 			if (y == "0111" ){ o = "1110";}
 			if (y == "1000" ){ o = "0011";}
 			if (y == "1001" ){ o = "0001";}
 			if (y == "1010" ){ o = "0111";}
 			if (y == "1011" ){ o = "0101";}
 			if (y == "1100" ){ o = "1011";}
 			if (y == "1101" ){ o = "1001";}
 			if (y == "1110" ){ o = "1111";}
 			if (y == "1111" ){ o = "1101";}
			
 		}
 	else if  (x == "0011") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "0011";}
 			if (y == "0010" ){ o = "0110";}
 			if (y == "0011" ){ o = "0101";}
 			if (y == "0100" ){ o = "1100";}
 			if (y == "0101" ){ o = "1111";}
 			if (y == "0110" ){ o = "1010";}
 			if (y == "0111" ){ o = "1001";}
 			if (y == "1000" ){ o = "1011";}
 			if (y == "1001" ){ o = "1000";}
 			if (y == "1010" ){ o = "1101";}
 			if (y == "1011" ){ o = "1110";}
 			if (y == "1100" ){ o = "0111";}
 			if (y == "1101" ){ o = "0100";}
 			if (y == "1110" ){ o = "0001";}
 			if (y == "1111" ){ o = "0010";}
			
 		}
 	else if  (x == "0100") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "0100";}
 			if (y == "0010" ){ o = "1000";}
 			if (y == "0011" ){ o = "1100";}
 			if (y == "0100" ){ o = "0011";}
 			if (y == "0101" ){ o = "0111";}
 			if (y == "0110" ){ o = "1011";}
 			if (y == "0111" ){ o = "1111";}
 			if (y == "1000" ){ o = "0110";}
 			if (y == "1001" ){ o = "0010";}
 			if (y == "1010" ){ o = "1110";}
 			if (y == "1011" ){ o = "1010";}
 			if (y == "1100" ){ o = "0101";}
 			if (y == "1101" ){ o = "0001";}
 			if (y == "1110" ){ o = "1101";}
 			if (y == "1111" ){ o = "1001";}
			
 		}
 	else if  (x == "0101") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "0101";}
 			if (y == "0010" ){ o = "1010";}
 			if (y == "0011" ){ o = "1111";}
 			if (y == "0100" ){ o = "0111";}
 			if (y == "0101" ){ o = "0010";}
 			if (y == "0110" ){ o = "1101";}
 			if (y == "0111" ){ o = "1000";}
 			if (y == "1000" ){ o = "1110";}
 			if (y == "1001" ){ o = "1011";}
 			if (y == "1010" ){ o = "0100";}
 			if (y == "1011" ){ o = "0001";}
 			if (y == "1100" ){ o = "1001";}
 			if (y == "1101" ){ o = "1100";}
 			if (y == "1110" ){ o = "0011";}
 			if (y == "1111" ){ o = "0110";}
			
 		}
 	else if  (x == "0110") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "0110";}
 			if (y == "0010" ){ o = "1100";}
 			if (y == "0011" ){ o = "1010";}
 			if (y == "0100" ){ o = "1011";}
 			if (y == "0101" ){ o = "1101";}
 			if (y == "0110" ){ o = "0111";}
 			if (y == "0111" ){ o = "0001";}
 			if (y == "1000" ){ o = "0101";}
 			if (y == "1001" ){ o = "0011";}
 			if (y == "1010" ){ o = "1001";}
 			if (y == "1011" ){ o = "1111";}
 			if (y == "1100" ){ o = "1110";}
 			if (y == "1101" ){ o = "1000";}
 			if (y == "1110" ){ o = "0010";}
 			if (y == "1111" ){ o = "0100";}
			
 		}
 	else if  (x == "0111") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "0111";}
 			if (y == "0010" ){ o = "1110";}
 			if (y == "0011" ){ o = "1001";}
 			if (y == "0100" ){ o = "1111";}
 			if (y == "0101" ){ o = "1000";}
 			if (y == "0110" ){ o = "0001";}
 			if (y == "0111" ){ o = "0110";}
 			if (y == "1000" ){ o = "1101";}
 			if (y == "1001" ){ o = "1010";}
 			if (y == "1010" ){ o = "0011";}
 			if (y == "1011" ){ o = "0100";}
 			if (y == "1100" ){ o = "0010";}
 			if (y == "1101" ){ o = "0101";}
 			if (y == "1110" ){ o = "1100";}
 			if (y == "1111" ){ o = "1011";}
			
 		}
 	else if  (x == "1000") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1000";}
 			if (y == "0010" ){ o = "0011";}
 			if (y == "0011" ){ o = "1011";}
 			if (y == "0100" ){ o = "0110";}
 			if (y == "0101" ){ o = "1110";}
 			if (y == "0110" ){ o = "0101";}
 			if (y == "0111" ){ o = "1101";}
 			if (y == "1000" ){ o = "1100";}
 			if (y == "1001" ){ o = "0100";}
 			if (y == "1010" ){ o = "1111";}
 			if (y == "1011" ){ o = "0111";}
 			if (y == "1100" ){ o = "1010";}
 			if (y == "1101" ){ o = "0010";}
 			if (y == "1110" ){ o = "1001";}
 			if (y == "1111" ){ o = "0001";}
			
 		}
 	else if  (x == "1001") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1001";}
 			if (y == "0010" ){ o = "0001";}
 			if (y == "0011" ){ o = "1000";}
 			if (y == "0100" ){ o = "0010";}
 			if (y == "0101" ){ o = "1011";}
 			if (y == "0110" ){ o = "0011";}
 			if (y == "0111" ){ o = "1010";}
 			if (y == "1000" ){ o = "0100";}
 			if (y == "1001" ){ o = "1101";}
 			if (y == "1010" ){ o = "0101";}
 			if (y == "1011" ){ o = "1100";}
 			if (y == "1100" ){ o = "0110";}
 			if (y == "1101" ){ o = "1111";}
 			if (y == "1110" ){ o = "0111";}
 			if (y == "1111" ){ o = "1110";}
			
 		}
 	else if  (x == "1010") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1010";}
 			if (y == "0010" ){ o = "0111";}
 			if (y == "0011" ){ o = "1101";}
 			if (y == "0100" ){ o = "1110";}
 			if (y == "0101" ){ o = "0100";}
 			if (y == "0110" ){ o = "1001";}
 			if (y == "0111" ){ o = "0011";}
 			if (y == "1000" ){ o = "1111";}
 			if (y == "1001" ){ o = "0101";}
 			if (y == "1010" ){ o = "1000";}
 			if (y == "1011" ){ o = "0010";}
 			if (y == "1100" ){ o = "0001";}
 			if (y == "1101" ){ o = "1011";}
 			if (y == "1110" ){ o = "0110";}
 			if (y == "1111" ){ o = "1100";}
			
 		}
 	else if  (x == "1011") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1011";}
 			if (y == "0010" ){ o = "0101";}
 			if (y == "0011" ){ o = "1110";}
 			if (y == "0100" ){ o = "1010";}
 			if (y == "0101" ){ o = "0001";}
 			if (y == "0110" ){ o = "1111";}
 			if (y == "0111" ){ o = "0100";}
 			if (y == "1000" ){ o = "0111";}
 			if (y == "1001" ){ o = "1100";}
 			if (y == "1010" ){ o = "0010";}
 			if (y == "1011" ){ o = "1001";}
 			if (y == "1100" ){ o = "1101";}
 			if (y == "1101" ){ o = "0110";}
 			if (y == "1110" ){ o = "1000";}
 			if (y == "1111" ){ o = "0011";}
			
 		}
 	else if  (x == "1100") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1100";}
 			if (y == "0010" ){ o = "1011";}
 			if (y == "0011" ){ o = "0111";}
 			if (y == "0100" ){ o = "0101";}
 			if (y == "0101" ){ o = "1001";}
 			if (y == "0110" ){ o = "1110";}
 			if (y == "0111" ){ o = "0010";}
 			if (y == "1000" ){ o = "1010";}
 			if (y == "1001" ){ o = "0110";}
 			if (y == "1010" ){ o = "0001";}
 			if (y == "1011" ){ o = "1101";}
 			if (y == "1100" ){ o = "1111";}
 			if (y == "1101" ){ o = "0011";}
 			if (y == "1110" ){ o = "0100";}
 			if (y == "1111" ){ o = "1000";}
			
 		}
 	else if  (x == "1101") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1101";}
 			if (y == "0010" ){ o = "1001";}
 			if (y == "0011" ){ o = "0100";}
 			if (y == "0100" ){ o = "0001";}
 			if (y == "0101" ){ o = "1100";}
 			if (y == "0110" ){ o = "1000";}
 			if (y == "0111" ){ o = "0101";}
 			if (y == "1000" ){ o = "0010";}
 			if (y == "1001" ){ o = "1111";}
 			if (y == "1010" ){ o = "1011";}
 			if (y == "1011" ){ o = "0110";}
 			if (y == "1100" ){ o = "0011";}
 			if (y == "1101" ){ o = "1110";}
 			if (y == "1110" ){ o = "1010";}
 			if (y == "1111" ){ o = "0111";}
			
 		}
 	else if  (x == "1110") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1110";}
 			if (y == "0010" ){ o = "1111";}
 			if (y == "0011" ){ o = "0001";}
 			if (y == "0100" ){ o = "1101";}
 			if (y == "0101" ){ o = "0011";}
 			if (y == "0110" ){ o = "0010";}
 			if (y == "0111" ){ o = "1100";}
 			if (y == "1000" ){ o = "1001";}
 			if (y == "1001" ){ o = "0111";}
 			if (y == "1010" ){ o = "0110";}
 			if (y == "1011" ){ o = "1000";}
 			if (y == "1100" ){ o = "0100";}
 			if (y == "1101" ){ o = "1010";}
 			if (y == "1110" ){ o = "1011";}
 			if (y == "1111" ){ o = "0101";}
			
 		}
 	else if  (x == "1111") {
		
 			if (y == "0000" ){ o = "0000";}
 			if (y == "0001" ){ o = "1111";}
 			if (y == "0010" ){ o = "1101";}
 			if (y == "0011" ){ o = "0010";}
 			if (y == "0100" ){ o = "1001";}
 			if (y == "0101" ){ o = "0110";}
 			if (y == "0110" ){ o = "0100";}
 			if (y == "0111" ){ o = "1011";}
 			if (y == "1000" ){ o = "0001";}
 			if (y == "1001" ){ o = "1110";}
 			if (y == "1010" ){ o = "1100";}
 			if (y == "1011" ){ o = "0011";}
 			if (y == "1100" ){ o = "1000";}
 			if (y == "1101" ){ o = "0111";}
 			if (y == "1110" ){ o = "0101";}
 			if (y == "1111" ){ o = "1010";}
			
 		}
		return o;
}

function xor (x, y){
	var output = "";
	for (var i = 0; i <4; i++){
	//console.log("it=" +i + ", x="+x + ", y="+y);
		if (x.substr(i, 1) == y.substr(i, 1)){
			output += "0"
		}
		else {
			output += "1"
		}
	}
	return output;
}

var input = ["0010", "0001", "1001", "0010", "1000", "0010", "1010"];
var reg1 = "0000";
var reg2 = "0000";
var reg3 = "0000";
var reg4 = "0000";
var reg5 = "0000";
var reg6 = "0000";
var reg7 = "0000";
var reg8 = "0000";
var reg1a = "0000";
var reg2a = "0000";
var reg3a = "0000";
var reg4a = "0000";
var reg5a = "0000";
var reg6a = "0000";
var reg7a = "0000";
var reg8a = "0000";
var syn0 = "0000";
var syn1 = "0000";
var syn2 = "0000";
var syn3 = "0000";
var syn4 = "0000";
var syn5 = "0000";
var syn6 = "0000";
var syn7 = "0000";

for (var i = 6; i >= 0; i--){
	reg1a = gfmultiplication (xor (reg8, input[i]) ,"1101");
	reg2a = xor (reg1, gfmultiplication (xor (reg8, input[i]) ,"0011"));
	reg3a = xor (reg2, gfmultiplication (xor (reg8, input[i]) ,"1001"));
	reg4a = xor (reg3, gfmultiplication (xor (reg8, input[i]) ,"0101"));
	reg5a = xor (reg4, gfmultiplication (xor (reg8, input[i]) ,"1101"));
	reg6a = xor (reg5, gfmultiplication (xor (reg8, input[i]) ,"0010"));
	reg7a = xor (reg6, gfmultiplication (xor (reg8, input[i]) ,"0001"));
	reg8a = xor (reg7, gfmultiplication (xor (reg8, input[i]) ,"1101"));
	
	reg1 = reg1a;
	reg2 = reg2a;
	reg3 = reg3a;
	reg4 = reg4a;
	reg5 = reg5a;
	reg6 = reg6a;
	reg7 = reg7a;
	reg8 = reg8a;
}                  

console.log(reg1+","+reg2+","+reg3+","+reg4+","+reg5+","+reg6+","+reg7+","+reg8);

												//var input = ["0010", "0001", "1001", "0010", "1000", "0010", "1010"];
 var input2 = [reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, "1101", "0011", "0110", "0010", "1011", "0010", "1110"];

 /*
var alphasGF16 = ["0001", "0010", "0100", "1000", 
                  "0011", "0110", "1100", "1011", 
                  "0101", "1010", "0111", "1110", 
                  "1111", "1101", "1001", "0000"];

var c7 = xor(
				xor(
						xor(alphasGF16[0], alphasGF16[1]), 
						xor(alphasGF16[2], alphasGF16[3])
				), 
				xor(
						xor(alphasGF16[4], alphasGF16[5]), 
						xor(alphasGF16[6], alphasGF16[7])
				)
		); 

var c6 = xor(
				xor(
						xor(
								xor(
										xor(
												gfmultiplication(alphasGF16[0], alphasGF16[1]), 
												gfmultiplication(alphasGF16[0], alphasGF16[2])
										), 
										xor(
												gfmultiplication(alphasGF16[0], alphasGF16[3]), 
												gfmultiplication(alphasGF16[0], alphasGF16[4])
										)
								), 
						xor(
								xor(
										gfmultiplication(alphasGF16[0], alphasGF16[5]), 
										gfmultiplication(alphasGF16[0], alphasGF16[6])
								), 
								xor(
										gfmultiplication(alphasGF16[0], alphasGF16[7]), 
										gfmultiplication(alphasGF16[1], alphasGF16[2])
								)
						)
				), 
				xor(
						xor(
								xor(
										gfmultiplication(alphasGF16[1], alphasGF16[3]), 
										gfmultiplication(alphasGF16[1], alphasGF16[4])
								), 
								xor(
										gfmultiplication(alphasGF16[1], alphasGF16[5]), 
										gfmultiplication(alphasGF16[1], alphasGF16[6])
								)
						), 
						xor(
								xor(
										gfmultiplication(alphasGF16[1], alphasGF16[7]), 
										gfmultiplication(alphasGF16[2], alphasGF16[3])
								), 
								xor(
										gfmultiplication(alphasGF16[2], alphasGF16[4]), 
										gfmultiplication(alphasGF16[2], alphasGF16[5])
								)
						)
				)
		), 
		xor(
				xor(
						xor(
								xor(
										gfmultiplication(alphasGF16[2], alphasGF16[6]), 
										gfmultiplication(alphasGF16[2], alphasGF16[7])
								), 
								xor(
										gfmultiplication(alphasGF16[3], alphasGF16[4]), 
										gfmultiplication(alphasGF16[3], alphasGF16[5])
								)
						), 
						xor(
								xor(
										gfmultiplication(alphasGF16[3], alphasGF16[6]), 
										gfmultiplication(alphasGF16[3], alphasGF16[7])
								), 
								xor(
										gfmultiplication(alphasGF16[4], alphasGF16[5]), 
										gfmultiplication(alphasGF16[4], alphasGF16[6])
								)
						)
				), 
				xor(
						xor(
								gfmultiplication(alphasGF16[4], alphasGF16[7]), 
								gfmultiplication(alphasGF16[5], alphasGF16[6])
						), 
						xor(
								gfmultiplication(alphasGF16[5], alphasGF16[7]), 
								gfmultiplication(alphasGF16[6], alphasGF16[7])
						)
				)
		)
	);

var c1 = xor(
				xor(
						xor(
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[0], alphasGF16[1]),
																		gfmultiplication(alphasGF16[2], alphasGF16[3])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[4], alphasGF16[5]),
																		alphasGF16[6]
													)
								),
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[0], alphasGF16[1]),
																		gfmultiplication(alphasGF16[2], alphasGF16[3])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[4], alphasGF16[5]),
																		alphasGF16[7]
													)
								)
						), 
						xor(
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[0], alphasGF16[1]),
																		gfmultiplication(alphasGF16[2], alphasGF16[3])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[4], alphasGF16[7]),
																		alphasGF16[6]
													)
								),
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[0], alphasGF16[1]),
																		gfmultiplication(alphasGF16[2], alphasGF16[3])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[7], alphasGF16[5]),
																		alphasGF16[6]
													)
								)
						)
				),
				xor(
						xor(
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[0], alphasGF16[1]),
																		gfmultiplication(alphasGF16[2], alphasGF16[7])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[4], alphasGF16[5]),
																		alphasGF16[6]
													)
								),
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[0], alphasGF16[1]),
																		gfmultiplication(alphasGF16[7], alphasGF16[3])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[4], alphasGF16[5]),
																		alphasGF16[6]
													)
								)
						),
						xor(
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[0], alphasGF16[7]),
																		gfmultiplication(alphasGF16[2], alphasGF16[3])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[4], alphasGF16[5]),
																		alphasGF16[6]
													)
								),
								gfmultiplication(
													gfmultiplication(
																		gfmultiplication(alphasGF16[7], alphasGF16[1]),
																		gfmultiplication(alphasGF16[2], alphasGF16[3])
													), 
													gfmultiplication(
																		gfmultiplication(alphasGF16[4], alphasGF16[5]),
																		alphasGF16[6]
													)
								)
						)
				)
		);

var c0 = gfmultiplication(
							gfmultiplication(
												gfmultiplication(alphasGF16[0], alphasGF16[1]), 
												gfmultiplication(alphasGF16[2], alphasGF16[3])
							), 
							gfmultiplication(
												gfmultiplication(alphasGF16[4], alphasGF16[5]), 
												gfmultiplication(alphasGF16[6], alphasGF16[7])
							)
		);
 
 
console.log("****Coeficientes: C7:" + c7 + ", C6:" + c6 + ", C1:"+ c1 + ", C0:" + c0);
 */
 
for(var j = 14; j >= 0; j--){
	syn0 = xor(input2[j], syn0);
	syn1 = xor(input2[j], gfmultiplication(syn1, "0010"));
	syn2 = xor(input2[j], gfmultiplication(syn2, "0100"));
	syn3 = xor(input2[j], gfmultiplication(syn3, "1000"));
	syn4 = xor(input2[j], gfmultiplication(syn4, "0011"));
	syn5 = xor(input2[j], gfmultiplication(syn5, "0110"));
	syn6 = xor(input2[j], gfmultiplication(syn6, "1100"));
	syn7 = xor(input2[j], gfmultiplication(syn7, "1011"));	
}

console.log("Sindromes: "+syn0+","+syn1+","+syn2+","+syn3+","+syn4+","+syn5+","+syn6+","+syn7);


var sreg0 = "0000";
var sreg1 = "0000";
var sreg2 = "0000";
var sreg3 = "0000";
var sreg4 = "0000";

var creg0 = "0000";
var creg1 = "0000";
var creg2 = "0000";
var creg3 = "0000";

var breg0 = "0000";
var breg1 = "0000";
var breg2 = "0000";
var breg3 = "0000";

var creg0a = "0000";
var creg1a = "0000";
var creg2a = "0000";
var creg3a = "0000";

var breg0a = "0000";
var breg1a = "0000";
var breg2a = "0000";
var breg3a = "0000";

var regdn = "0000";

var regdi = "0000";

var regaux = "0000";

syndrome = [syn0, syn1, syn2, syn3, syn4, syn5, syn6, syn7];

for(var k = 0; k < 8; k++){
	sreg0 = syndrome[k];
	
	regdn = xor(
					sreg0, 
					xor(
						xor(
							gfmultiplication(sreg1, creg0), 
							gfmultiplication(sreg2, creg1)
						), 
						xor(
							gfmultiplication(sreg3, creg2),
							gfmultiplication(sreg4, creg3)
						)
					)
				);
	
	regaux = gfmultiplication(regdi, regdn);
	
	creg0a = xor(creg0, gfmultiplication(breg0, regaux));
	creg1a = xor(creg1, gfmultiplication(breg1, regaux));
	creg2a = xor(creg2, gfmultiplication(breg2, regaux));
	creg3a = xor(creg3, gfmultiplication(breg3, regaux));
	
	if(regdn == "0000" || l%2 == 1){
		breg0a = breg3;
		breg1a = breg0;
		breg2a = breg1;
		breg3a = breg2;
	}
	else{
		regdi = gfinvert(regdn);
		breg0a = "0001";
		breg1a = creg0;
		breg2a = creg1;
		breg3a = creg2; 
	}
	
	breg0 = breg0a;
	breg1 = breg1a;
	breg2 = breg2a;
	breg3 = breg3a;
	
	creg0 = creg0a;
	creg1 = creg1a;
	creg2 = creg2a;
	creg3 = creg3a;
	
	sreg4 = sreg3;
	sreg3 = sreg2;
	sreg2 = sreg1;
	sreg1 = sreg0;	
	
}

var lambda = [creg0, creg1, creg2, creg3];

var omega = ["0000", "0000", "0000", "0000"];

sreg0 = "0000";
sreg1 = "0000";
sreg2 = "0000";
sreg3 = "0000";
sreg4 = "0000";

for(var l = 0; l <= 3; l++){
	sreg0 = syndrome[l];
	
	omega[l] = xor(
					sreg0, 
					xor(
						xor(
							gfmultiplication(sreg1, creg0), 
							gfmultiplication(sreg2, creg1)
						), 
						xor(
							gfmultiplication(sreg3, creg2),
							gfmultiplication(sreg4, creg3)
						)
					)
				);
				
	sreg4 = sreg3;
	sreg3 = sreg2;
	sreg2 = sreg1;
	sreg1 = sreg0;	
	
}

console.log("Lambda: " + lambda);

console.log("Omega: " + omega);


var chienLocR = "0000";
var chienLocRO = "0000";
var chienVal = "0000";

var csl0 = lambda[0];
var csl1 = lambda[1];
var csl2 = lambda[2];
var csl3 = lambda[3];

var csv0 = omega[0];
var csv1 = omega[1];
var csv2 = omega[2];
var csv3 = omega[3];


for(var m = 14; m >= 8; m--){
	csl0 = gfmultiplication(csl0, "0010");
	csl1 = gfmultiplication(csl1, "0100");
	csl2 = gfmultiplication(csl2, "1000");
	csl3 = gfmultiplication(csl3, "0011");
	
	chienLocRO = xor(
		csl0,
		csl2
	);
	
	chienLocR = xor(
		xor(csl1, csl3),
        xor("0001", chienLocRO)
	);
	
	csv1 = gfmultiplication(csv1, "0010");
	csv2 = gfmultiplication(csv2, "0100");
	csv3 = gfmultiplication(csv3, "1000");
	
	chienVal = xor(
		xor(csv0, csv2),
		xor(csv1, csv3)
	);
	
	chienLocRO = gfinvert(chienLocRO);
	
	console.log("Chien Loc "+ m +": "+ chienLocR);
	console.log("Chien Mult "+ m +": "+ gfmultiplication(chienVal, chienLocRO));
	
	
	if(chienLocR == "0000")
		input2[m] = xor(input2[m], gfmultiplication(chienVal, chienLocRO));
	
}

console.log(input2);









