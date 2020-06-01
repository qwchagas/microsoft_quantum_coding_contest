namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
 
    operation Solve (qs : Qubit[]) : Int
    {
        CNOT(qs[0],qs[1]);
        H(qs[0]);
        SWAP(qs[0],qs[1]);
        let m0 = M(qs[0])==One?1|0;
        let m1 = M(qs[1])==One?1|0;
        return 2*m0+m1;
    }
}