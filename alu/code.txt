module prj (  
    input [7:0] A,                
    input [7:0] B,               
    input [2:0] ALUOp,           
    output reg [7:0] Result,     
    output reg [15:0] mul_result,   
    output reg [7:0] div_result  
);  

    always @(*) begin  
        Result = 8'b0;  
        mul_result = 16'b0;  
        div_result = 8'b0;  
        
        case (ALUOp)  
            3'b000:  
                Result = A + B;  

            3'b001: 
                Result = A - B;  

            3'b010:  
                Result = A & B;  

            3'b011: 
                Result = A | B;  

            3'b100: 
                Result = A ^ B;  

            3'b101: 
                mul_result = A * B;  

            3'b110: 
                if (B != 8'b0) begin 
                    div_result = A / B;
                end else begin  
                    div_result = 8'b0;  
                end  

            default: 
                Result = 8'b0;  
        endcase  

        mul_result = A * B;
        if (B != 8'b0) begin  
            div_result = A / B;  
        end else begin  
            div_result = 8'b0;  
        end  
    end  
endmodule