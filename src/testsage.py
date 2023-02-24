

# This file was *autogenerated* from the file worker.sage
# try:
#     from sage.all_cmdline import *   # import sage library
# except Exception as e:
#     with open("/home/juschei/Desktop/cnf_anf_gb/output/log") as f:
#         f.write("abs")

#from sage.rings.polynomial.pbori import BooleanPolynomialRing
# import msgspec
# import argparse


# inpath = "/home/juschei/Desktop/cnf_anf_gb/input/"
# outpath = "/home/juschei/Desktop/cnf_anf_gb/output/"


# def standard_conversion(ring, clauses):
#     functions = []
#     variables = ring.gens()

#     for c in clauses:
#         f = ring(1)
#         for L in c:
#             if L > 0:
#                 f *= (variables[L] + 1)
#             elif L < 0:
#                 f *= variables[-L]

#         functions.append(f)

#     return functions
    

# def process(boolean_ring, clauses, nr):

#     #B = BooleanPolynomialRing(nr_vars+1, 'x')
#     ideal = boolean_ring.ideal(standard_conversion(boolean_ring, clauses))
#     gb = ideal.groebner_basis()
#     data = dumps(gb)
#     with open(outpath + str(nr).zfill(3), "wb") as f:
#         f.write(data)
        
def process_wrapper(nr):
    import traceback
    global DOT_SAGE
    DOT_SAGE = "/home/juschei/.sage"
    try:
       import sage.rings.polynomial.pbori   # import sage library
    except Exception as e:
        with open(f"/home/juschei/Desktop/cnf_anf_gb/output/err_{nr}", "w") as f:
            f.write(traceback.format_exc())
    return 2.4
# def process_wrapper(nr):
#     # fetch number of variables from nr_varvs file
#     with open(inpath + "nr_vars", "r") as f:
#         nr_vars = int(f.read().strip())
#     B = BooleanPolynomialRing(nr_vars+1 , 'x')

#     with open(inpath + str(nr).zfill(3), "rb") as f:
#         raw = f.read()
#         clauses = msgspec.msgpack.decode(raw)
#         process(B, clauses, nr)


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

