import os

file_to_be_reduced = 'temp.mlir'
interesting_script = './reduce.sh'


def print_seq(seq):
    for line in seq:
        print(line, end='')


def print_file(filename):
    for line in read_from_file(filename):
        print(line, end="")


def save_to_file(filename, lines):
    content = ""
    for line in lines:
        content = content + line
    with open(filename, 'w') as f:
        f.write(content)


def read_from_file(filename):
    lines = []
    with open(filename, 'r') as f:
        return f.readlines()


def is_interesting(scripts, args):
    cmd = scripts
    for arg in args:
        cmd = scripts + " " + arg
    print(cmd)
    return os.system(cmd) > 0


reduced_seq = []
reduced_len = 0
index = 0


def reduce_main(origin_seq):
    global reduced_len
    global reduced_seq
    reduced_seq = origin_seq
    reduced_len = len(origin_seq)
    reduce_ddmin(origin_seq)


def reduce_ddmin(seq, split_num=2):
    global reduced_len
    global reduced_seq
    global index

    seq_len = len(seq)

    if seq_len < 2:
        return

    # len(sub_seqs) == split_num
    sub_seqs = []
    # len(cmpl_seqs) == split_num
    # sub_seqs[i] + cmpl_seqs[i] == seq
    cmpl_seqs = []

    sub_seq_len = int(seq_len / split_num)

    for i in range(0, split_num):
        sub_seq = []
        cmpl_seq = []
        for j in range(0, seq_len):
            if i * sub_seq_len <= j < (i + 1) * sub_seq_len:
                sub_seq.append(seq[j])
            if j < i * sub_seq_len or j >= (i + 1) * sub_seq_len:
                cmpl_seq.append(seq[j])

        sub_seqs.append(sub_seq)
        cmpl_seqs.append(cmpl_seq)

    reduce_succeed = False
    temp_file = "reduce_temp.mlir"
    for sub_seq in sub_seqs:
        save_to_file(temp_file, sub_seq)
        if is_interesting(interesting_script, [temp_file]):
            save_to_file("temp/reduce_temp" + str(index) + ".mlir", sub_seq)
            index = index + 1
            if len(sub_seq) < reduced_len:
                reduced_len = len(sub_seq)
                reduced_seq = sub_seq
            print_seq(sub_seq)
            reduce_succeed = True
            reduce_ddmin(sub_seq)

    for cmpl_seq in cmpl_seqs:
        save_to_file(temp_file, cmpl_seq)
        if is_interesting(interesting_script, [temp_file]):
            save_to_file("temp/reduce_temp" + str(index) + ".mlir", cmpl_seq)
            index = index + 1
            if len(cmpl_seq) < reduced_len:
                reduced_len = len(cmpl_seq)
                reduced_seq = cmpl_seq
            print_seq(cmpl_seq)
            reduce_succeed = True
            reduce_ddmin(cmpl_seq)

    if not reduce_succeed:
        if len(sub_seqs[0]) == 1 and seq_len < 2 * split_num:
            return
        reduce_ddmin(seq, split_num * 2)
    return


original_seq = read_from_file(file_to_be_reduced)
reduced_file = "reduced.mlir"
reduce_main(original_seq)
save_to_file(reduced_file, reduced_seq)
