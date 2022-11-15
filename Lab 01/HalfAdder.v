module HalfAdder(sum,cout,x,y);
    input x,y;
    output sum, cout;
    
    wire sum,cout;
    
    assign sum = x^y;
    assign cout = x&y;
    
endmodule