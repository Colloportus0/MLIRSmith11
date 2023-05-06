module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(0 : i32) : i32
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(4 : index) : i64
    %32 = llvm.mlir.constant(8 : index) : i64
    %33 = llvm.mlir.constant(8 : index) : i64
    %34 = llvm.mlir.null : !llvm.ptr<i32>
    %35 = llvm.getelementptr %34[%33] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i32> to i64
    %37 = llvm.mlir.constant(16 : index) : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.sub %37, %42  : i64
    %44 = llvm.add %41, %43  : i64
    %45 = llvm.urem %44, %37  : i64
    %46 = llvm.sub %44, %45  : i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr<i32>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.insertvalue %40, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %26, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %32, %56[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %29, %58[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %30, %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%61 : i64)
  ^bb1(%64: i64):  // 2 preds: ^bb0, ^bb11
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%66 : i64)
  ^bb3(%69: i64):  // 2 preds: ^bb2, ^bb10
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%71 : i64)
  ^bb5(%74: i64):  // 2 preds: ^bb4, ^bb9
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%76 : i64)
  ^bb7(%79: i64):  // 2 preds: ^bb6, ^bb8
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %81 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mul %64, %82  : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mul %25, %84  : i64
    %86 = llvm.add %83, %85  : i64
    %87 = llvm.add %86, %74  : i64
    %88 = llvm.add %87, %25  : i64
    %89 = llvm.getelementptr %81[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.load %89 : !llvm.ptr<i32>
    %91 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(8 : index) : i64
    %93 = llvm.mul %64, %92  : i64
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mul %69, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %74, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.add %99, %79  : i64
    %101 = llvm.getelementptr %91[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.icmp "slt" %90, %102 : i32
    %104 = llvm.select %103, %90, %102 : i1, i32
    %105 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(8 : index) : i64
    %107 = llvm.mul %64, %106  : i64
    %108 = llvm.mlir.constant(4 : index) : i64
    %109 = llvm.mul %69, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %74, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.add %113, %79  : i64
    %115 = llvm.getelementptr %105[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %104, %115 : !llvm.ptr<i32>
    %116 = llvm.add %79, %78  : i64
    llvm.br ^bb7(%116 : i64)
  ^bb9:  // pred: ^bb7
    %117 = llvm.add %74, %73  : i64
    llvm.br ^bb5(%117 : i64)
  ^bb10:  // pred: ^bb5
    %118 = llvm.add %69, %68  : i64
    llvm.br ^bb3(%118 : i64)
  ^bb11:  // pred: ^bb3
    %119 = llvm.add %64, %63  : i64
    llvm.br ^bb1(%119 : i64)
  ^bb12:  // pred: ^bb1
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(4 : index) : i64
    %126 = llvm.mlir.constant(8 : index) : i64
    %127 = llvm.mlir.constant(8 : index) : i64
    %128 = llvm.mlir.null : !llvm.ptr<i1>
    %129 = llvm.getelementptr %128[%127] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<i1> to i64
    %131 = llvm.mlir.constant(16 : index) : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.bitcast %133 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i1> to i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.sub %131, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.urem %138, %131  : i64
    %140 = llvm.sub %138, %139  : i64
    %141 = llvm.inttoptr %140 : i64 to !llvm.ptr<i1>
    %142 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %143 = llvm.insertvalue %134, %142[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %126, %150[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %123, %152[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %124, %153[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%155 : i64)
  ^bb13(%158: i64):  // 2 preds: ^bb12, ^bb23
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%160 : i64)
  ^bb15(%163: i64):  // 2 preds: ^bb14, ^bb22
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%165 : i64)
  ^bb17(%168: i64):  // 2 preds: ^bb16, ^bb21
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%170 : i64)
  ^bb19(%173: i64):  // 2 preds: ^bb18, ^bb20
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %175 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(8 : index) : i64
    %177 = llvm.mul %158, %176  : i64
    %178 = llvm.mlir.constant(4 : index) : i64
    %179 = llvm.mul %163, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mul %168, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.add %183, %173  : i64
    %185 = llvm.getelementptr %175[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mul %158, %188  : i64
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mul %25, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.add %192, %168  : i64
    %194 = llvm.add %193, %25  : i64
    %195 = llvm.getelementptr %187[%194] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %196 = llvm.load %195 : !llvm.ptr<i32>
    %197 = llvm.icmp "slt" %186, %196 : i32
    %198 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(8 : index) : i64
    %200 = llvm.mul %158, %199  : i64
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mul %163, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mul %168, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.add %206, %173  : i64
    %208 = llvm.getelementptr %198[%207] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %197, %208 : !llvm.ptr<i1>
    %209 = llvm.add %173, %172  : i64
    llvm.br ^bb19(%209 : i64)
  ^bb21:  // pred: ^bb19
    %210 = llvm.add %168, %167  : i64
    llvm.br ^bb17(%210 : i64)
  ^bb22:  // pred: ^bb17
    %211 = llvm.add %163, %162  : i64
    llvm.br ^bb15(%211 : i64)
  ^bb23:  // pred: ^bb15
    %212 = llvm.add %158, %157  : i64
    llvm.br ^bb13(%212 : i64)
  ^bb24:  // pred: ^bb13
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mlir.constant(8 : index) : i64
    %220 = llvm.mlir.constant(8 : index) : i64
    %221 = llvm.mlir.null : !llvm.ptr<i32>
    %222 = llvm.getelementptr %221[%220] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i32> to i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.add %223, %224  : i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr<i8>
    %227 = llvm.bitcast %226 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i32> to i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.sub %224, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.urem %231, %224  : i64
    %233 = llvm.sub %231, %232  : i64
    %234 = llvm.inttoptr %233 : i64 to !llvm.ptr<i32>
    %235 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %236 = llvm.insertvalue %227, %235[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %213, %239[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %214, %240[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %215, %241[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %216, %242[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %219, %243[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %218, %244[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %216, %245[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %217, %246[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%248 : i64)
  ^bb25(%251: i64):  // 2 preds: ^bb24, ^bb35
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%253 : i64)
  ^bb27(%256: i64):  // 2 preds: ^bb26, ^bb34
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%258 : i64)
  ^bb29(%261: i64):  // 2 preds: ^bb28, ^bb33
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%263 : i64)
  ^bb31(%266: i64):  // 2 preds: ^bb30, ^bb32
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %268 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.mlir.constant(8 : index) : i64
    %270 = llvm.mul %251, %269  : i64
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mul %256, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mul %261, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.add %276, %266  : i64
    %278 = llvm.getelementptr %268[%277] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %279 = llvm.load %278 : !llvm.ptr<i32>
    %280 = llvm.sub %24, %279  : i32
    %281 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(8 : index) : i64
    %283 = llvm.mul %251, %282  : i64
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mul %256, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mul %261, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.add %289, %266  : i64
    %291 = llvm.getelementptr %281[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %280, %291 : !llvm.ptr<i32>
    %292 = llvm.add %266, %265  : i64
    llvm.br ^bb31(%292 : i64)
  ^bb33:  // pred: ^bb31
    %293 = llvm.add %261, %260  : i64
    llvm.br ^bb29(%293 : i64)
  ^bb34:  // pred: ^bb29
    %294 = llvm.add %256, %255  : i64
    llvm.br ^bb27(%294 : i64)
  ^bb35:  // pred: ^bb27
    %295 = llvm.add %251, %250  : i64
    llvm.br ^bb25(%295 : i64)
  ^bb36:  // pred: ^bb25
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mlir.constant(8 : index) : i64
    %303 = llvm.mlir.constant(8 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i32>
    %305 = llvm.getelementptr %304[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i32> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i32> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i32>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %296, %322[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %302, %326[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %301, %327[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %299, %328[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %300, %329[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%331 : i64)
  ^bb37(%334: i64):  // 2 preds: ^bb36, ^bb47
    %335 = llvm.icmp "slt" %334, %332 : i64
    llvm.cond_br %335, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%336 : i64)
  ^bb39(%339: i64):  // 2 preds: ^bb38, ^bb46
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%341 : i64)
  ^bb41(%344: i64):  // 2 preds: ^bb40, ^bb45
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%346 : i64)
  ^bb43(%349: i64):  // 2 preds: ^bb42, ^bb44
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %351 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(8 : index) : i64
    %353 = llvm.mul %334, %352  : i64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mul %339, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mul %344, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.add %359, %349  : i64
    %361 = llvm.getelementptr %351[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.load %361 : !llvm.ptr<i32>
    %363 = llvm.extractvalue %330[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(8 : index) : i64
    %365 = llvm.mul %334, %364  : i64
    %366 = llvm.mlir.constant(4 : index) : i64
    %367 = llvm.mul %349, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mul %344, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.add %371, %339  : i64
    %373 = llvm.getelementptr %363[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %362, %373 : !llvm.ptr<i32>
    %374 = llvm.add %349, %348  : i64
    llvm.br ^bb43(%374 : i64)
  ^bb45:  // pred: ^bb43
    %375 = llvm.add %344, %343  : i64
    llvm.br ^bb41(%375 : i64)
  ^bb46:  // pred: ^bb41
    %376 = llvm.add %339, %338  : i64
    llvm.br ^bb39(%376 : i64)
  ^bb47:  // pred: ^bb39
    %377 = llvm.add %334, %333  : i64
    llvm.br ^bb37(%377 : i64)
  ^bb48:  // pred: ^bb37
    %378 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %379 = llvm.insertvalue %154, %378[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %380 = llvm.insertvalue %247, %379[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %381 = llvm.insertvalue %330, %380[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %381 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(4 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %101[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %102[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(0 : i64) : i64
    %124 = llvm.getelementptr %92[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.mlir.constant(4 : i64) : i64
    %126 = llvm.call @omTensorCreateUntyped(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %130 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.bitcast %130 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%126, %127, %129, %131) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %132 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%126, %132) : (!llvm.ptr<i8>, i64) -> ()
    %133 = llvm.call @omTensorGetShape(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.call @omTensorGetStrides(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %133[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %134[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %133[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %134[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(2 : i64) : i64
    %146 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %133[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %134[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(3 : i64) : i64
    %151 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %133[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.getelementptr %134[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %154 : !llvm.ptr<i64>
    %155 = llvm.mlir.constant(1 : i64) : i64
    %156 = llvm.getelementptr %92[%155] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %126, %156 : !llvm.ptr<ptr<i8>>
    %157 = llvm.mlir.constant(4 : i64) : i64
    %158 = llvm.call @omTensorCreateUntyped(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.mlir.constant(1 : i64) : i64
    %160 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.bitcast %160 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %162 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.bitcast %162 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%158, %159, %161, %163) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %164 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%158, %164) : (!llvm.ptr<i8>, i64) -> ()
    %165 = llvm.call @omTensorGetShape(%158) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %166 = llvm.call @omTensorGetStrides(%158) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %167 = llvm.mlir.constant(0 : i64) : i64
    %168 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %165[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %166[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(1 : i64) : i64
    %173 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %165[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %166[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(2 : i64) : i64
    %178 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %165[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %166[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.mlir.constant(3 : i64) : i64
    %183 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %165[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.getelementptr %166[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.mlir.constant(2 : i64) : i64
    %188 = llvm.getelementptr %92[%187] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %158, %188 : !llvm.ptr<ptr<i8>>
    %189 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %189 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

