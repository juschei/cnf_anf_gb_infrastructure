import random


def test(file_idx):
    random_int = random.randint(1,100)
    filename = "/home/juschei/Desktop/IO/testfile_" + str(random_int)
    with open(filename, "w") as f:
        f.write("content written to file!")
    return file_idx