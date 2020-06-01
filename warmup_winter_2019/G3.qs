namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (x : Qubit[], y : Qubit) : Unit {
    body (...) {
        let N = Length(x);
        using(q0=Qubit[N/2]){
            for(i in 0..N/2-1){
                    X(x[i]);
                    X(x[N-i-1]);
                    CCNOT(x[i],x[N-i-1],q0[i]);
                    X(x[i]);
                    X(x[N-i-1]);
                    CCNOT(x[i],x[N-i-1],q0[i]);
            }
            
            Controlled X(q0,y);
            
            for(i in 0..N/2-1){
                X(x[i]);
                X(x[N-i-1]);
                CCNOT(x[i],x[N-i-1],q0[i]);
                X(x[i]);
                X(x[N-i-1]);
                CCNOT(x[i],x[N-i-1],q0[i]);
            }
            
        }
    }
    adjoint auto;
}
}