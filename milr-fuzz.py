import os
import numpy as np
import random
import time

opts = []
with open('opt.txt', 'r') as f: 
    for opt in f.readlines():
        end = opt.find('\n')
        opts.append(opt[:end].strip())

# replace the executable with the local version with commit-id
gen_executable = "toyc-ch5"
opt_executable = "../bin/mlir-opt"
mlir_dir = "mlir/"
gen_fail_file = "genfail/"
crash_dir = "crash/"
log_dir = "errlog/"
temp_log = "temp.log"
src_mlir = "src.mlir"

tests_per_file = 100
opts_per_file = 10

def exec_cmd(cmd):
    return os.system(cmd) >> 8
    
mlir_file_idx = 0

# main loop
while True:
    r = random.random() 
    mlir_file = mlir_dir + "temp" + str(mlir_file_idx) + str(hash(r))  + ".mlir"
    mlir_file_idx = mlir_file_idx + 1

    # generate new temp mlir
    gen_cmd = gen_executable + " -emit=mlir-affine " + src_mlir + " 2>" + mlir_file
    gen_stat = exec_cmd(gen_cmd)
    if gen_stat > 0:
        gen_log_file = gen_fail_file + mlir_file[len(mlir_dir):] + ".log"
        exec_cmd("mv " + mlir_file + " " + gen_log_file)
        continue
    print(gen_cmd)

    # see if the pass can run successfully instead of crash
    succeed_opts = []
    print(len(opts))
    for opt in opts:
        cmd = opt_executable + " " + opt + " " + mlir_file + " 1>/dev/null 2>" + temp_log
        state = exec_cmd(cmd)
        print(str(state) + ": "+cmd)
        if state > 130: 
            crashlog = crash_dir + mlir_file[len(mlir_dir):] + str(hash(opt)) + ".log"
            cmd = "mv " + temp_log + " " + crashlog
            print(cmd)
            os.system(cmd)
        else :
            succeed_opts.append(opt)

    # test the generated file
    for i in range(0, tests_per_file):
        idxes = np.random.randint(0, len(succeed_opts), opts_per_file)
        np.random.shuffle(idxes)
        cmd = opt_executable
        opt_str = ""
        for idx in idxes:
            opt_str = opt_str + succeed_opts[idx]
            cmd = cmd + " " + succeed_opts[idx]
        cmd = cmd + " " + mlir_file + " 1>/dev/null 2>" + temp_log
        state = exec_cmd(cmd)
        print(str(state) + ": " + cmd)
        if state > 130:
            crashlog = crash_dir + mlir_file[len(mlir_dir):] + str(hash(opt_str)) + ".log"
            cmd = "mv " + temp_log + " " + crashlog
            print(cmd)
            os.system(cmd)
