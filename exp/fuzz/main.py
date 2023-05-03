import os
import numpy as np
import random
import time

opts = []
with open('opt.txt', 'r') as f: # options.txt
    for opt in f.readlines():
        end = opt.find('\n')
        opts.append(opt[:end])

# replace the executable with the local version with commit-id
gen_executable = "toyc-ch5" # ls #生成测试用例
opt_executable = "mlir-opt"   # 待测的命令
mlir_dir = "mlir/"
gen_fail_file = "gen_fail/"
log_dir = "log/"
config_file = "config.json"
temp_log = "temp.log"
src_mlir = "src.mlir"

files_per_conf = 100
tests_per_file = 1000


def exec_cmd(cmd):
    return os.system(cmd) >> 8


def conf_gen():
    os.system(gen_executable + " -emit=config > " + config_file)


conf_gen()

mlir_file_idx = 1730
# main loop
while True:
    mlir_file = mlir_dir + "temp" + str(mlir_file_idx) + ".mlir"
    mlir_file_idx = mlir_file_idx + 1
    if mlir_file_idx % files_per_conf == 0:
        conf_gen()

    # generate new temp mlir
    gen_cmd = gen_executable + " -emit=mlir-affine -c " + config_file + " " + src_mlir + " 2>" + mlir_file
    gen_stat = exec_cmd(gen_cmd)
    if gen_stat > 0:
        gen_log_file = gen_fail_file + mlir_file[len(mlir_dir):] + ".log"
        exec_cmd("mv " + mlir_file + " " + gen_log_file)
        continue

    # succeed_opts = []
    # for opt in opts:
    #     cmd = opt_executable + " " + opt + " " + mlir_file + " 1>/dev/null 2>" + temp_log
    #     print(cmd)
    #     state = exec_cmd(cmd)
    #     print(cmd + ":" + str(state))
    #     if state > 130: ## 如果返回状态 crash ，记录下来
    #         log_file = log_dir + mlir_file[len(mlir_dir):] + opt + ".log"
    #         cmd = "mv " + temp_log + " " + log_file
    #         print(cmd)
    #         os.system(cmd)
    #     else :
    #         succeed_opts.append(opt)


    # test the generated file
    for i in range(0, tests_per_file):
        optNum = random.randint(5, 10)
        idxes = np.random.randint(0, len(opts), optNum)
        np.random.shuffle(idxes)
        cmd = opt_executable
        opt_str = ""
        for idx in idxes:
            opt_str = opt_str + opts[idx]
            cmd = cmd + " " + opts[idx]
        cmd = cmd + " " + mlir_file + " 1>/dev/null 2>" + temp_log
        state = exec_cmd(cmd)
        print(cmd + ":" + str(state))
        if state > 130:
            log_file = log_dir + mlir_file[len(mlir_dir):] + opt_str + ".log"
            cmd = "mv " + temp_log + " " + log_file
            print(cmd)
            os.system(cmd)
