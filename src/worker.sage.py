

# This file was *autogenerated* from the file worker.sage
from sage.all_cmdline import *   # import sage library

_sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_3 = Integer(3)
from sage.rings.polynomial.pbori import BooleanPolynomialRing
import msgspec
import argparse


inpath = "/home/juschei/Desktop/cnf_anf_gb/input/"
outpath = "/home/juschei/Desktop/cnf_anf_gb/output/"


def standard_conversion(ring, clauses):
    functions = []
    variables = ring.gens()

    for c in clauses:
        f = ring(_sage_const_1 )
        for L in c:
            if L > _sage_const_0 :
                f *= (variables[L] + _sage_const_1 )
            elif L < _sage_const_0 :
                f *= variables[-L]

        functions.append(f)

    return functions
    

def process(boolean_ring, clauses, nr):

    #B = BooleanPolynomialRing(nr_vars+1, 'x')
    ideal = boolean_ring.ideal(standard_conversion(boolean_ring, clauses))
    gb = ideal.groebner_basis()
    data = dumps(gb)
    with open(outpath + str(nr).zfill(_sage_const_3 ), "wb") as f:
        f.write(data)
        

def process_wrapper(nr):
    # fetch number of variables from nr_varvs file
    with open(inpath + "nr_vars", "r") as f:
        nr_vars = int(f.read().strip())
    B = BooleanPolynomialRing(nr_vars+_sage_const_1 , 'x')

    with open(inpath + str(nr).zfill(_sage_const_3 ), "rb") as f:
        raw = f.read()
        clauses = msgspec.msgpack.decode(raw)
        process(B, clauses, nr)


# if __name__=="__main__":
#     parser = argparse.ArgumentParser()
#     parser.add_argument("--nr", type=int, required=True)
#     args = parser.parse_args()
#     nr = args.nr
        
#     # fetch number of variables from nr_varvs file
#     with open(inpath + "nr_vars", "r") as f:
#         nr_vars = int(f.read().strip())
#     B = BooleanPolynomialRing(nr_vars+_sage_const_1 , 'x')

#     with open(inpath + str(nr).zfill(_sage_const_3 ), "rb") as f:
#         raw = f.read()
#         clauses = msgspec.msgpack.decode(raw)
#         process(B, clauses, nr)
        
# windows comment

