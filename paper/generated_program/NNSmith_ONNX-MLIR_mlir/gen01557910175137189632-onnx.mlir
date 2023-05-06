module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
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
    %24 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %26, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %27, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.mlir.null : !llvm.ptr<i32>
    %45 = llvm.getelementptr %44[%43] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.mlir.constant(16 : index) : i64
    %48 = llvm.add %46, %47  : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i32> to i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.sub %47, %52  : i64
    %54 = llvm.add %51, %53  : i64
    %55 = llvm.urem %54, %47  : i64
    %56 = llvm.sub %54, %55  : i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr<i32>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %59 = llvm.insertvalue %50, %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %36, %62[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %37, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %42, %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %39, %68[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %40, %69[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%71 : i64)
  ^bb1(%74: i64):  // 2 preds: ^bb0, ^bb11
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%76 : i64)
  ^bb3(%79: i64):  // 2 preds: ^bb2, ^bb10
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%81 : i64)
  ^bb5(%84: i64):  // 2 preds: ^bb4, ^bb9
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%86 : i64)
  ^bb7(%89: i64):  // 2 preds: ^bb6, ^bb8
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %91 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(4 : index) : i64
    %96 = llvm.mul %74, %95  : i64
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.mul %79, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %84, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.add %102, %89  : i64
    %104 = llvm.getelementptr %94[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %105 = llvm.load %104 : !llvm.ptr<i32>
    %106 = llvm.mul %93, %105  : i32
    %107 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(4 : index) : i64
    %109 = llvm.mul %74, %108  : i64
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mul %79, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %84, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.add %115, %89  : i64
    %117 = llvm.getelementptr %107[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %106, %117 : !llvm.ptr<i32>
    %118 = llvm.add %89, %88  : i64
    llvm.br ^bb7(%118 : i64)
  ^bb9:  // pred: ^bb7
    %119 = llvm.add %84, %83  : i64
    llvm.br ^bb5(%119 : i64)
  ^bb10:  // pred: ^bb5
    %120 = llvm.add %79, %78  : i64
    llvm.br ^bb3(%120 : i64)
  ^bb11:  // pred: ^bb3
    %121 = llvm.add %74, %73  : i64
    llvm.br ^bb1(%121 : i64)
  ^bb12:  // pred: ^bb1
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mlir.constant(4 : index) : i64
    %130 = llvm.mlir.null : !llvm.ptr<f64>
    %131 = llvm.getelementptr %130[%129] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<f64> to i64
    %133 = llvm.mlir.constant(16 : index) : i64
    %134 = llvm.add %132, %133  : i64
    %135 = llvm.call @malloc(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.bitcast %135 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<f64> to i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.sub %133, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.urem %140, %133  : i64
    %142 = llvm.sub %140, %141  : i64
    %143 = llvm.inttoptr %142 : i64 to !llvm.ptr<f64>
    %144 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %145 = llvm.insertvalue %136, %144[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %143, %145[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.insertvalue %147, %146[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %124, %150[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %128, %152[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %125, %154[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %126, %155[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%157 : i64)
  ^bb13(%160: i64):  // 2 preds: ^bb12, ^bb23
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%162 : i64)
  ^bb15(%165: i64):  // 2 preds: ^bb14, ^bb22
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%167 : i64)
  ^bb17(%170: i64):  // 2 preds: ^bb16, ^bb21
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%172 : i64)
  ^bb19(%175: i64):  // 2 preds: ^bb18, ^bb20
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %177 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.mlir.constant(4 : index) : i64
    %179 = llvm.mul %160, %178  : i64
    %180 = llvm.mlir.constant(4 : index) : i64
    %181 = llvm.mul %165, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %170, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.add %185, %175  : i64
    %187 = llvm.getelementptr %177[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.load %187 : !llvm.ptr<i32>
    %189 = llvm.sitofp %188 : i32 to f64
    %190 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %160, %191  : i64
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mul %165, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %170, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.add %198, %175  : i64
    %200 = llvm.getelementptr %190[%199] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %189, %200 : !llvm.ptr<f64>
    %201 = llvm.add %175, %174  : i64
    llvm.br ^bb19(%201 : i64)
  ^bb21:  // pred: ^bb19
    %202 = llvm.add %170, %169  : i64
    llvm.br ^bb17(%202 : i64)
  ^bb22:  // pred: ^bb17
    %203 = llvm.add %165, %164  : i64
    llvm.br ^bb15(%203 : i64)
  ^bb23:  // pred: ^bb15
    %204 = llvm.add %160, %159  : i64
    llvm.br ^bb13(%204 : i64)
  ^bb24:  // pred: ^bb13
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mlir.null : !llvm.ptr<f64>
    %212 = llvm.getelementptr %211[%210] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<f64> to i64
    %214 = llvm.mlir.constant(16 : index) : i64
    %215 = llvm.add %213, %214  : i64
    %216 = llvm.call @malloc(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.bitcast %216 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<f64> to i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.sub %214, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.urem %221, %214  : i64
    %223 = llvm.sub %221, %222  : i64
    %224 = llvm.inttoptr %223 : i64 to !llvm.ptr<f64>
    %225 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %226 = llvm.insertvalue %217, %225[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.insertvalue %224, %226[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.insertvalue %228, %227[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.insertvalue %205, %229[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.insertvalue %206, %230[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.insertvalue %207, %231[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %209, %232[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.insertvalue %207, %233[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.insertvalue %208, %234[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%236 : i64)
  ^bb25(%239: i64):  // 2 preds: ^bb24, ^bb32
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%241 : i64)
  ^bb27(%244: i64):  // 2 preds: ^bb26, ^bb31
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%246 : i64)
  ^bb29(%249: i64):  // 2 preds: ^bb28, ^bb30
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %251 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mul %239, %252  : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mul %244, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.add %256, %249  : i64
    %258 = llvm.getelementptr %251[%257] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %24, %258 : !llvm.ptr<f64>
    %259 = llvm.add %249, %248  : i64
    llvm.br ^bb29(%259 : i64)
  ^bb31:  // pred: ^bb29
    %260 = llvm.add %244, %243  : i64
    llvm.br ^bb27(%260 : i64)
  ^bb32:  // pred: ^bb27
    %261 = llvm.add %239, %238  : i64
    llvm.br ^bb25(%261 : i64)
  ^bb33:  // pred: ^bb25
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%262 : i64)
  ^bb34(%265: i64):  // 2 preds: ^bb33, ^bb44
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%267 : i64)
  ^bb36(%270: i64):  // 2 preds: ^bb35, ^bb43
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%272 : i64)
  ^bb38(%275: i64):  // 2 preds: ^bb37, ^bb42
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%277 : i64)
  ^bb40(%280: i64):  // 2 preds: ^bb39, ^bb41
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %282 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mul %265, %283  : i64
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mul %270, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mul %275, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.add %290, %280  : i64
    %292 = llvm.getelementptr %282[%291] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %293 = llvm.load %292 : !llvm.ptr<f64>
    %294 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mul %265, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %275, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.add %299, %280  : i64
    %301 = llvm.getelementptr %294[%300] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %302 = llvm.load %301 : !llvm.ptr<f64>
    %303 = llvm.fadd %302, %293  : f64
    %304 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mul %265, %305  : i64
    %307 = llvm.mlir.constant(2 : index) : i64
    %308 = llvm.mul %275, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.add %309, %280  : i64
    %311 = llvm.getelementptr %304[%310] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %303, %311 : !llvm.ptr<f64>
    %312 = llvm.add %280, %279  : i64
    llvm.br ^bb40(%312 : i64)
  ^bb42:  // pred: ^bb40
    %313 = llvm.add %275, %274  : i64
    llvm.br ^bb38(%313 : i64)
  ^bb43:  // pred: ^bb38
    %314 = llvm.add %270, %269  : i64
    llvm.br ^bb36(%314 : i64)
  ^bb44:  // pred: ^bb36
    %315 = llvm.add %265, %264  : i64
    llvm.br ^bb34(%315 : i64)
  ^bb45:  // pred: ^bb34
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mlir.null : !llvm.ptr<f64>
    %325 = llvm.getelementptr %324[%323] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<f64> to i64
    %327 = llvm.mlir.constant(16 : index) : i64
    %328 = llvm.add %326, %327  : i64
    %329 = llvm.call @malloc(%328) : (i64) -> !llvm.ptr<i8>
    %330 = llvm.bitcast %329 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<f64> to i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.sub %327, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.urem %334, %327  : i64
    %336 = llvm.sub %334, %335  : i64
    %337 = llvm.inttoptr %336 : i64 to !llvm.ptr<f64>
    %338 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %339 = llvm.insertvalue %330, %338[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %337, %339[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.insertvalue %341, %340[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %316, %342[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %317, %343[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %318, %344[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %319, %345[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %322, %346[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %321, %347[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %319, %348[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %320, %349[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%351 : i64)
  ^bb46(%354: i64):  // 2 preds: ^bb45, ^bb56
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%356 : i64)
  ^bb48(%359: i64):  // 2 preds: ^bb47, ^bb55
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%361 : i64)
  ^bb50(%364: i64):  // 2 preds: ^bb49, ^bb54
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%366 : i64)
  ^bb52(%369: i64):  // 2 preds: ^bb51, ^bb53
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %371 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.mlir.constant(4 : index) : i64
    %373 = llvm.mul %354, %372  : i64
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mul %359, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mul %364, %377  : i64
    %379 = llvm.add %376, %378  : i64
    %380 = llvm.add %379, %369  : i64
    %381 = llvm.getelementptr %371[%380] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %382 = llvm.load %381 : !llvm.ptr<f64>
    %383 = llvm.intr.cos(%382)  : (f64) -> f64
    %384 = llvm.extractvalue %350[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mul %354, %385  : i64
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %359, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %364, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %369  : i64
    %394 = llvm.getelementptr %384[%393] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %383, %394 : !llvm.ptr<f64>
    %395 = llvm.add %369, %368  : i64
    llvm.br ^bb52(%395 : i64)
  ^bb54:  // pred: ^bb52
    %396 = llvm.add %364, %363  : i64
    llvm.br ^bb50(%396 : i64)
  ^bb55:  // pred: ^bb50
    %397 = llvm.add %359, %358  : i64
    llvm.br ^bb48(%397 : i64)
  ^bb56:  // pred: ^bb48
    %398 = llvm.add %354, %353  : i64
    llvm.br ^bb46(%398 : i64)
  ^bb57:  // pred: ^bb46
    %399 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %400 = llvm.insertvalue %235, %399[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %401 = llvm.insertvalue %350, %400[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %401 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(3 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(0 : i64) : i64
    %118 = llvm.getelementptr %91[%117] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %118 : !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(4 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %127[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %128[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %127[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %128[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(3 : i64) : i64
    %145 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %127[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %128[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.getelementptr %91[%149] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %120, %150 : !llvm.ptr<ptr<i8>>
    %151 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %151 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

