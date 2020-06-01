namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
 
    operation Solve (qs : Qubit[]) : Unit {
    	let m = Length(qs);
        X(qs[m-1]);
        for(i in 1..m-1){
            CNOT(qs[m-1],qs[m-1-i]);
        }
    X(qs[Length(qs)-1]);
    
        for(i in 1..m-1){
            Controlled H([qs[m-1]],qs[m-1-i]);
        }
    }
}