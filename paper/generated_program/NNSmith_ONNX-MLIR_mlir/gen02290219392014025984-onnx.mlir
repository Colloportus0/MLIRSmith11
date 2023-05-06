module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 10 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 4 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.insertvalue %arg19, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.insertvalue %arg20, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.insertvalue %arg18, %23[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.mlir.constant(0 : i32) : i32
    %27 = llvm.mlir.constant(-2147483648 : i32) : i32
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.mlir.constant(8 : index) : i64
    %37 = llvm.mlir.constant(16 : index) : i64
    %38 = llvm.mlir.constant(16 : index) : i64
    %39 = llvm.mlir.null : !llvm.ptr<i32>
    %40 = llvm.getelementptr %39[%38] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(16 : index) : i64
    %43 = llvm.add %41, %42  : i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.sub %42, %47  : i64
    %49 = llvm.add %46, %48  : i64
    %50 = llvm.urem %49, %42  : i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %54 = llvm.insertvalue %45, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.insertvalue %29, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %30, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %31, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %32, %60[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %33, %61[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %37, %62[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %36, %63[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %35, %64[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %33, %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %34, %66[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%68 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb14
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%73 : i64)
  ^bb3(%76: i64):  // 2 preds: ^bb2, ^bb13
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%78 : i64)
  ^bb5(%81: i64):  // 2 preds: ^bb4, ^bb12
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%83 : i64)
  ^bb7(%86: i64):  // 2 preds: ^bb6, ^bb11
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%88 : i64)
  ^bb9(%91: i64):  // 2 preds: ^bb8, ^bb10
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %93 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %94 = llvm.mlir.constant(8 : index) : i64
    %95 = llvm.mul %71, %94  : i64
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mul %76, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mul %81, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mul %28, %102  : i64
    %104 = llvm.add %101, %103  : i64
    %105 = llvm.add %104, %91  : i64
    %106 = llvm.getelementptr %93[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(8 : index) : i64
    %110 = llvm.mul %28, %109  : i64
    %111 = llvm.mlir.constant(4 : index) : i64
    %112 = llvm.mul %81, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %86, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.add %116, %91  : i64
    %118 = llvm.getelementptr %108[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.icmp "sgt" %107, %119 : i32
    %121 = llvm.select %120, %107, %119 : i1, i32
    %122 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %123 = llvm.mlir.constant(16 : index) : i64
    %124 = llvm.mul %71, %123  : i64
    %125 = llvm.mlir.constant(8 : index) : i64
    %126 = llvm.mul %76, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mul %81, %128  : i64
    %130 = llvm.add %127, %129  : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %86, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.add %133, %91  : i64
    %135 = llvm.getelementptr %122[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %121, %135 : !llvm.ptr<i32>
    %136 = llvm.add %91, %90  : i64
    llvm.br ^bb9(%136 : i64)
  ^bb11:  // pred: ^bb9
    %137 = llvm.add %86, %85  : i64
    llvm.br ^bb7(%137 : i64)
  ^bb12:  // pred: ^bb7
    %138 = llvm.add %81, %80  : i64
    llvm.br ^bb5(%138 : i64)
  ^bb13:  // pred: ^bb5
    %139 = llvm.add %76, %75  : i64
    llvm.br ^bb3(%139 : i64)
  ^bb14:  // pred: ^bb3
    %140 = llvm.add %71, %70  : i64
    llvm.br ^bb1(%140 : i64)
  ^bb15:  // pred: ^bb1
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.constant(8 : index) : i64
    %148 = llvm.mlir.constant(8 : index) : i64
    %149 = llvm.mlir.null : !llvm.ptr<i32>
    %150 = llvm.getelementptr %149[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<i32> to i64
    %152 = llvm.mlir.constant(16 : index) : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr<i8>
    %155 = llvm.bitcast %154 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i32> to i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.sub %152, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.urem %159, %152  : i64
    %161 = llvm.sub %159, %160  : i64
    %162 = llvm.inttoptr %161 : i64 to !llvm.ptr<i32>
    %163 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %164 = llvm.insertvalue %155, %163[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %162, %164[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.insertvalue %166, %165[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %142, %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %143, %169[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %144, %170[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %147, %171[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %146, %172[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %144, %173[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %145, %174[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%176 : i64)
  ^bb16(%179: i64):  // 2 preds: ^bb15, ^bb26
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%181 : i64)
  ^bb18(%184: i64):  // 2 preds: ^bb17, ^bb25
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%186 : i64)
  ^bb20(%189: i64):  // 2 preds: ^bb19, ^bb24
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%191 : i64)
  ^bb22(%194: i64):  // 2 preds: ^bb21, ^bb23
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %196 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(8 : index) : i64
    %198 = llvm.mul %179, %197  : i64
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mul %184, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mul %189, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %194  : i64
    %206 = llvm.getelementptr %196[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %27, %206 : !llvm.ptr<i32>
    %207 = llvm.add %194, %193  : i64
    llvm.br ^bb22(%207 : i64)
  ^bb24:  // pred: ^bb22
    %208 = llvm.add %189, %188  : i64
    llvm.br ^bb20(%208 : i64)
  ^bb25:  // pred: ^bb20
    %209 = llvm.add %184, %183  : i64
    llvm.br ^bb18(%209 : i64)
  ^bb26:  // pred: ^bb18
    %210 = llvm.add %179, %178  : i64
    llvm.br ^bb16(%210 : i64)
  ^bb27:  // pred: ^bb16
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%211 : i64)
  ^bb28(%214: i64):  // 2 preds: ^bb27, ^bb41
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%216 : i64)
  ^bb30(%219: i64):  // 2 preds: ^bb29, ^bb40
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%221 : i64)
  ^bb32(%224: i64):  // 2 preds: ^bb31, ^bb39
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%226 : i64)
  ^bb34(%229: i64):  // 2 preds: ^bb33, ^bb38
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%231 : i64)
  ^bb36(%234: i64):  // 2 preds: ^bb35, ^bb37
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %236 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %237 = llvm.mlir.constant(16 : index) : i64
    %238 = llvm.mul %214, %237  : i64
    %239 = llvm.mlir.constant(8 : index) : i64
    %240 = llvm.mul %219, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mul %224, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %229, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %234  : i64
    %249 = llvm.getelementptr %236[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %250 = llvm.load %249 : !llvm.ptr<i32>
    %251 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(8 : index) : i64
    %253 = llvm.mul %214, %252  : i64
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mul %219, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mul %224, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.add %259, %229  : i64
    %261 = llvm.getelementptr %251[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.load %261 : !llvm.ptr<i32>
    %263 = llvm.icmp "sgt" %262, %250 : i32
    %264 = llvm.select %263, %262, %250 : i1, i32
    %265 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.mlir.constant(8 : index) : i64
    %267 = llvm.mul %214, %266  : i64
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mul %219, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mul %224, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.add %273, %229  : i64
    %275 = llvm.getelementptr %265[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %264, %275 : !llvm.ptr<i32>
    %276 = llvm.add %234, %233  : i64
    llvm.br ^bb36(%276 : i64)
  ^bb38:  // pred: ^bb36
    %277 = llvm.add %229, %228  : i64
    llvm.br ^bb34(%277 : i64)
  ^bb39:  // pred: ^bb34
    %278 = llvm.add %224, %223  : i64
    llvm.br ^bb32(%278 : i64)
  ^bb40:  // pred: ^bb32
    %279 = llvm.add %219, %218  : i64
    llvm.br ^bb30(%279 : i64)
  ^bb41:  // pred: ^bb30
    %280 = llvm.add %214, %213  : i64
    llvm.br ^bb28(%280 : i64)
  ^bb42:  // pred: ^bb28
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mlir.constant(8 : index) : i64
    %288 = llvm.mlir.constant(8 : index) : i64
    %289 = llvm.mlir.null : !llvm.ptr<i32>
    %290 = llvm.getelementptr %289[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i32> to i64
    %292 = llvm.mlir.constant(16 : index) : i64
    %293 = llvm.add %291, %292  : i64
    %294 = llvm.call @malloc(%293) : (i64) -> !llvm.ptr<i8>
    %295 = llvm.bitcast %294 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %296 = llvm.ptrtoint %295 : !llvm.ptr<i32> to i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.sub %292, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.urem %299, %292  : i64
    %301 = llvm.sub %299, %300  : i64
    %302 = llvm.inttoptr %301 : i64 to !llvm.ptr<i32>
    %303 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %304 = llvm.insertvalue %295, %303[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %302, %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.insertvalue %306, %305[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %281, %307[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %282, %308[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %283, %309[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %287, %311[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %284, %313[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %285, %314[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%316 : i64)
  ^bb43(%319: i64):  // 2 preds: ^bb42, ^bb53
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%321 : i64)
  ^bb45(%324: i64):  // 2 preds: ^bb44, ^bb52
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%326 : i64)
  ^bb47(%329: i64):  // 2 preds: ^bb46, ^bb51
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%331 : i64)
  ^bb49(%334: i64):  // 2 preds: ^bb48, ^bb50
    %335 = llvm.icmp "slt" %334, %332 : i64
    llvm.cond_br %335, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %336 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(8 : index) : i64
    %338 = llvm.mul %319, %337  : i64
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mul %324, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mul %329, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.add %344, %334  : i64
    %346 = llvm.getelementptr %336[%345] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %347 = llvm.load %346 : !llvm.ptr<i32>
    %348 = llvm.sub %26, %347  : i32
    %349 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.mlir.constant(8 : index) : i64
    %351 = llvm.mul %319, %350  : i64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %324, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mul %329, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.add %357, %334  : i64
    %359 = llvm.getelementptr %349[%358] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %348, %359 : !llvm.ptr<i32>
    %360 = llvm.add %334, %333  : i64
    llvm.br ^bb49(%360 : i64)
  ^bb51:  // pred: ^bb49
    %361 = llvm.add %329, %328  : i64
    llvm.br ^bb47(%361 : i64)
  ^bb52:  // pred: ^bb47
    %362 = llvm.add %324, %323  : i64
    llvm.br ^bb45(%362 : i64)
  ^bb53:  // pred: ^bb45
    %363 = llvm.add %319, %318  : i64
    llvm.br ^bb43(%363 : i64)
  ^bb54:  // pred: ^bb43
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(10 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(20 : index) : i64
    %370 = llvm.mlir.constant(40 : index) : i64
    %371 = llvm.mlir.constant(40 : index) : i64
    %372 = llvm.mlir.null : !llvm.ptr<i32>
    %373 = llvm.getelementptr %372[%371] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i32> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i32> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<i32>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %364, %390[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %370, %394[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %369, %395[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %367, %396[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%399 : i64)
  ^bb55(%402: i64):  // 2 preds: ^bb54, ^bb65
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%404 : i64)
  ^bb57(%407: i64):  // 2 preds: ^bb56, ^bb64
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%409 : i64)
  ^bb59(%412: i64):  // 2 preds: ^bb58, ^bb63
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%414 : i64)
  ^bb61(%417: i64):  // 2 preds: ^bb60, ^bb62
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %419 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.mlir.constant(8 : index) : i64
    %421 = llvm.mul %402, %420  : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mul %407, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mul %412, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.add %427, %417  : i64
    %429 = llvm.getelementptr %419[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %430 = llvm.load %429 : !llvm.ptr<i32>
    %431 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(40 : index) : i64
    %433 = llvm.mul %402, %432  : i64
    %434 = llvm.mlir.constant(20 : index) : i64
    %435 = llvm.mul %407, %434  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mul %412, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.add %439, %417  : i64
    %441 = llvm.getelementptr %431[%440] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %430, %441 : !llvm.ptr<i32>
    %442 = llvm.add %417, %416  : i64
    llvm.br ^bb61(%442 : i64)
  ^bb63:  // pred: ^bb61
    %443 = llvm.add %412, %411  : i64
    llvm.br ^bb59(%443 : i64)
  ^bb64:  // pred: ^bb59
    %444 = llvm.add %407, %406  : i64
    llvm.br ^bb57(%444 : i64)
  ^bb65:  // pred: ^bb57
    %445 = llvm.add %402, %401  : i64
    llvm.br ^bb55(%445 : i64)
  ^bb66:  // pred: ^bb55
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%446 : i64)
  ^bb67(%449: i64):  // 2 preds: ^bb66, ^bb77
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%451 : i64)
  ^bb69(%454: i64):  // 2 preds: ^bb68, ^bb76
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%456 : i64)
  ^bb71(%459: i64):  // 2 preds: ^bb70, ^bb75
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%461 : i64)
  ^bb73(%464: i64):  // 2 preds: ^bb72, ^bb74
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.add %459, %466  : i64
    %468 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(8 : index) : i64
    %470 = llvm.mul %449, %469  : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mul %454, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %459, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.add %476, %464  : i64
    %478 = llvm.getelementptr %468[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %479 = llvm.load %478 : !llvm.ptr<i32>
    %480 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(40 : index) : i64
    %482 = llvm.mul %449, %481  : i64
    %483 = llvm.mlir.constant(20 : index) : i64
    %484 = llvm.mul %454, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mul %467, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.add %488, %464  : i64
    %490 = llvm.getelementptr %480[%489] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %479, %490 : !llvm.ptr<i32>
    %491 = llvm.add %464, %463  : i64
    llvm.br ^bb73(%491 : i64)
  ^bb75:  // pred: ^bb73
    %492 = llvm.add %459, %458  : i64
    llvm.br ^bb71(%492 : i64)
  ^bb76:  // pred: ^bb71
    %493 = llvm.add %454, %453  : i64
    llvm.br ^bb69(%493 : i64)
  ^bb77:  // pred: ^bb69
    %494 = llvm.add %449, %448  : i64
    llvm.br ^bb67(%494 : i64)
  ^bb78:  // pred: ^bb67
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%495 : i64)
  ^bb79(%498: i64):  // 2 preds: ^bb78, ^bb89
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(2 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%500 : i64)
  ^bb81(%503: i64):  // 2 preds: ^bb80, ^bb88
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%505 : i64)
  ^bb83(%508: i64):  // 2 preds: ^bb82, ^bb87
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%510 : i64)
  ^bb85(%513: i64):  // 2 preds: ^bb84, ^bb86
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %515 = llvm.mlir.constant(4 : index) : i64
    %516 = llvm.add %508, %515  : i64
    %517 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(8 : index) : i64
    %519 = llvm.mul %498, %518  : i64
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.mul %503, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.mlir.constant(2 : index) : i64
    %524 = llvm.mul %508, %523  : i64
    %525 = llvm.add %522, %524  : i64
    %526 = llvm.add %525, %513  : i64
    %527 = llvm.getelementptr %517[%526] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %528 = llvm.load %527 : !llvm.ptr<i32>
    %529 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.mlir.constant(40 : index) : i64
    %531 = llvm.mul %498, %530  : i64
    %532 = llvm.mlir.constant(20 : index) : i64
    %533 = llvm.mul %503, %532  : i64
    %534 = llvm.add %531, %533  : i64
    %535 = llvm.mlir.constant(2 : index) : i64
    %536 = llvm.mul %516, %535  : i64
    %537 = llvm.add %534, %536  : i64
    %538 = llvm.add %537, %513  : i64
    %539 = llvm.getelementptr %529[%538] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %528, %539 : !llvm.ptr<i32>
    %540 = llvm.add %513, %512  : i64
    llvm.br ^bb85(%540 : i64)
  ^bb87:  // pred: ^bb85
    %541 = llvm.add %508, %507  : i64
    llvm.br ^bb83(%541 : i64)
  ^bb88:  // pred: ^bb83
    %542 = llvm.add %503, %502  : i64
    llvm.br ^bb81(%542 : i64)
  ^bb89:  // pred: ^bb81
    %543 = llvm.add %498, %497  : i64
    llvm.br ^bb79(%543 : i64)
  ^bb90:  // pred: ^bb79
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%544 : i64)
  ^bb91(%547: i64):  // 2 preds: ^bb90, ^bb101
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb92, ^bb102
  ^bb92:  // pred: ^bb91
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(2 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%549 : i64)
  ^bb93(%552: i64):  // 2 preds: ^bb92, ^bb100
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb94, ^bb101
  ^bb94:  // pred: ^bb93
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%554 : i64)
  ^bb95(%557: i64):  // 2 preds: ^bb94, ^bb99
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb96, ^bb100
  ^bb96:  // pred: ^bb95
    %559 = llvm.mlir.constant(0 : index) : i64
    %560 = llvm.mlir.constant(2 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%559 : i64)
  ^bb97(%562: i64):  // 2 preds: ^bb96, ^bb98
    %563 = llvm.icmp "slt" %562, %560 : i64
    llvm.cond_br %563, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %564 = llvm.mlir.constant(6 : index) : i64
    %565 = llvm.add %557, %564  : i64
    %566 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mlir.constant(8 : index) : i64
    %568 = llvm.mul %547, %567  : i64
    %569 = llvm.mlir.constant(4 : index) : i64
    %570 = llvm.mul %552, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mul %557, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.add %574, %562  : i64
    %576 = llvm.getelementptr %566[%575] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %577 = llvm.load %576 : !llvm.ptr<i32>
    %578 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.mlir.constant(40 : index) : i64
    %580 = llvm.mul %547, %579  : i64
    %581 = llvm.mlir.constant(20 : index) : i64
    %582 = llvm.mul %552, %581  : i64
    %583 = llvm.add %580, %582  : i64
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mul %565, %584  : i64
    %586 = llvm.add %583, %585  : i64
    %587 = llvm.add %586, %562  : i64
    %588 = llvm.getelementptr %578[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %577, %588 : !llvm.ptr<i32>
    %589 = llvm.add %562, %561  : i64
    llvm.br ^bb97(%589 : i64)
  ^bb99:  // pred: ^bb97
    %590 = llvm.add %557, %556  : i64
    llvm.br ^bb95(%590 : i64)
  ^bb100:  // pred: ^bb95
    %591 = llvm.add %552, %551  : i64
    llvm.br ^bb93(%591 : i64)
  ^bb101:  // pred: ^bb93
    %592 = llvm.add %547, %546  : i64
    llvm.br ^bb91(%592 : i64)
  ^bb102:  // pred: ^bb91
    %593 = llvm.mlir.constant(0 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%593 : i64)
  ^bb103(%596: i64):  // 2 preds: ^bb102, ^bb113
    %597 = llvm.icmp "slt" %596, %594 : i64
    llvm.cond_br %597, ^bb104, ^bb114
  ^bb104:  // pred: ^bb103
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb105(%598 : i64)
  ^bb105(%601: i64):  // 2 preds: ^bb104, ^bb112
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb106, ^bb113
  ^bb106:  // pred: ^bb105
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.mlir.constant(2 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb107(%603 : i64)
  ^bb107(%606: i64):  // 2 preds: ^bb106, ^bb111
    %607 = llvm.icmp "slt" %606, %604 : i64
    llvm.cond_br %607, ^bb108, ^bb112
  ^bb108:  // pred: ^bb107
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.mlir.constant(2 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%608 : i64)
  ^bb109(%611: i64):  // 2 preds: ^bb108, ^bb110
    %612 = llvm.icmp "slt" %611, %609 : i64
    llvm.cond_br %612, ^bb110, ^bb111
  ^bb110:  // pred: ^bb109
    %613 = llvm.mlir.constant(8 : index) : i64
    %614 = llvm.add %606, %613  : i64
    %615 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.mlir.constant(8 : index) : i64
    %617 = llvm.mul %596, %616  : i64
    %618 = llvm.mlir.constant(4 : index) : i64
    %619 = llvm.mul %601, %618  : i64
    %620 = llvm.add %617, %619  : i64
    %621 = llvm.mlir.constant(2 : index) : i64
    %622 = llvm.mul %606, %621  : i64
    %623 = llvm.add %620, %622  : i64
    %624 = llvm.add %623, %611  : i64
    %625 = llvm.getelementptr %615[%624] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %626 = llvm.load %625 : !llvm.ptr<i32>
    %627 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.mlir.constant(40 : index) : i64
    %629 = llvm.mul %596, %628  : i64
    %630 = llvm.mlir.constant(20 : index) : i64
    %631 = llvm.mul %601, %630  : i64
    %632 = llvm.add %629, %631  : i64
    %633 = llvm.mlir.constant(2 : index) : i64
    %634 = llvm.mul %614, %633  : i64
    %635 = llvm.add %632, %634  : i64
    %636 = llvm.add %635, %611  : i64
    %637 = llvm.getelementptr %627[%636] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %626, %637 : !llvm.ptr<i32>
    %638 = llvm.add %611, %610  : i64
    llvm.br ^bb109(%638 : i64)
  ^bb111:  // pred: ^bb109
    %639 = llvm.add %606, %605  : i64
    llvm.br ^bb107(%639 : i64)
  ^bb112:  // pred: ^bb107
    %640 = llvm.add %601, %600  : i64
    llvm.br ^bb105(%640 : i64)
  ^bb113:  // pred: ^bb105
    %641 = llvm.add %596, %595  : i64
    llvm.br ^bb103(%641 : i64)
  ^bb114:  // pred: ^bb103
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.mlir.constant(2 : index) : i64
    %644 = llvm.mlir.constant(4 : index) : i64
    %645 = llvm.mlir.constant(2 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(8 : index) : i64
    %648 = llvm.mlir.constant(16 : index) : i64
    %649 = llvm.mlir.constant(16 : index) : i64
    %650 = llvm.mlir.null : !llvm.ptr<i32>
    %651 = llvm.getelementptr %650[%649] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %652 = llvm.ptrtoint %651 : !llvm.ptr<i32> to i64
    %653 = llvm.mlir.constant(16 : index) : i64
    %654 = llvm.add %652, %653  : i64
    %655 = llvm.call @malloc(%654) : (i64) -> !llvm.ptr<i8>
    %656 = llvm.bitcast %655 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %657 = llvm.ptrtoint %656 : !llvm.ptr<i32> to i64
    %658 = llvm.mlir.constant(1 : index) : i64
    %659 = llvm.sub %653, %658  : i64
    %660 = llvm.add %657, %659  : i64
    %661 = llvm.urem %660, %653  : i64
    %662 = llvm.sub %660, %661  : i64
    %663 = llvm.inttoptr %662 : i64 to !llvm.ptr<i32>
    %664 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %665 = llvm.insertvalue %656, %664[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.insertvalue %663, %665[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.mlir.constant(0 : index) : i64
    %668 = llvm.insertvalue %667, %666[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.insertvalue %642, %668[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.insertvalue %643, %669[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.insertvalue %644, %670[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.insertvalue %645, %671[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %648, %672[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.insertvalue %647, %673[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %645, %674[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %646, %675[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.mlir.constant(0 : index) : i64
    %678 = llvm.mlir.constant(1 : index) : i64
    %679 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%677 : i64)
  ^bb115(%680: i64):  // 2 preds: ^bb114, ^bb125
    %681 = llvm.icmp "slt" %680, %678 : i64
    llvm.cond_br %681, ^bb116, ^bb126
  ^bb116:  // pred: ^bb115
    %682 = llvm.mlir.constant(0 : index) : i64
    %683 = llvm.mlir.constant(2 : index) : i64
    %684 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb117(%682 : i64)
  ^bb117(%685: i64):  // 2 preds: ^bb116, ^bb124
    %686 = llvm.icmp "slt" %685, %683 : i64
    llvm.cond_br %686, ^bb118, ^bb125
  ^bb118:  // pred: ^bb117
    %687 = llvm.mlir.constant(0 : index) : i64
    %688 = llvm.mlir.constant(2 : index) : i64
    %689 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb119(%687 : i64)
  ^bb119(%690: i64):  // 2 preds: ^bb118, ^bb123
    %691 = llvm.icmp "slt" %690, %688 : i64
    llvm.cond_br %691, ^bb120, ^bb124
  ^bb120:  // pred: ^bb119
    %692 = llvm.mlir.constant(0 : index) : i64
    %693 = llvm.mlir.constant(2 : index) : i64
    %694 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%692 : i64)
  ^bb121(%695: i64):  // 2 preds: ^bb120, ^bb122
    %696 = llvm.icmp "slt" %695, %693 : i64
    llvm.cond_br %696, ^bb122, ^bb123
  ^bb122:  // pred: ^bb121
    %697 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.mlir.constant(8 : index) : i64
    %699 = llvm.mul %680, %698  : i64
    %700 = llvm.mlir.constant(4 : index) : i64
    %701 = llvm.mul %685, %700  : i64
    %702 = llvm.add %699, %701  : i64
    %703 = llvm.mlir.constant(2 : index) : i64
    %704 = llvm.mul %690, %703  : i64
    %705 = llvm.add %702, %704  : i64
    %706 = llvm.add %705, %695  : i64
    %707 = llvm.getelementptr %697[%706] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %708 = llvm.load %707 : !llvm.ptr<i32>
    %709 = llvm.extractvalue %676[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.mlir.constant(16 : index) : i64
    %711 = llvm.mul %680, %710  : i64
    %712 = llvm.mlir.constant(8 : index) : i64
    %713 = llvm.mul %685, %712  : i64
    %714 = llvm.add %711, %713  : i64
    %715 = llvm.mlir.constant(2 : index) : i64
    %716 = llvm.mul %690, %715  : i64
    %717 = llvm.add %714, %716  : i64
    %718 = llvm.add %717, %695  : i64
    %719 = llvm.getelementptr %709[%718] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %708, %719 : !llvm.ptr<i32>
    %720 = llvm.add %695, %694  : i64
    llvm.br ^bb121(%720 : i64)
  ^bb123:  // pred: ^bb121
    %721 = llvm.add %690, %689  : i64
    llvm.br ^bb119(%721 : i64)
  ^bb124:  // pred: ^bb119
    %722 = llvm.add %685, %684  : i64
    llvm.br ^bb117(%722 : i64)
  ^bb125:  // pred: ^bb117
    %723 = llvm.add %680, %679  : i64
    llvm.br ^bb115(%723 : i64)
  ^bb126:  // pred: ^bb115
    %724 = llvm.mlir.constant(0 : index) : i64
    %725 = llvm.mlir.constant(1 : index) : i64
    %726 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%724 : i64)
  ^bb127(%727: i64):  // 2 preds: ^bb126, ^bb137
    %728 = llvm.icmp "slt" %727, %725 : i64
    llvm.cond_br %728, ^bb128, ^bb138
  ^bb128:  // pred: ^bb127
    %729 = llvm.mlir.constant(0 : index) : i64
    %730 = llvm.mlir.constant(2 : index) : i64
    %731 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb129(%729 : i64)
  ^bb129(%732: i64):  // 2 preds: ^bb128, ^bb136
    %733 = llvm.icmp "slt" %732, %730 : i64
    llvm.cond_br %733, ^bb130, ^bb137
  ^bb130:  // pred: ^bb129
    %734 = llvm.mlir.constant(0 : index) : i64
    %735 = llvm.mlir.constant(2 : index) : i64
    %736 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb131(%734 : i64)
  ^bb131(%737: i64):  // 2 preds: ^bb130, ^bb135
    %738 = llvm.icmp "slt" %737, %735 : i64
    llvm.cond_br %738, ^bb132, ^bb136
  ^bb132:  // pred: ^bb131
    %739 = llvm.mlir.constant(0 : index) : i64
    %740 = llvm.mlir.constant(2 : index) : i64
    %741 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb133(%739 : i64)
  ^bb133(%742: i64):  // 2 preds: ^bb132, ^bb134
    %743 = llvm.icmp "slt" %742, %740 : i64
    llvm.cond_br %743, ^bb134, ^bb135
  ^bb134:  // pred: ^bb133
    %744 = llvm.mlir.constant(2 : index) : i64
    %745 = llvm.add %737, %744  : i64
    %746 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %747 = llvm.mlir.constant(8 : index) : i64
    %748 = llvm.mul %727, %747  : i64
    %749 = llvm.mlir.constant(4 : index) : i64
    %750 = llvm.mul %732, %749  : i64
    %751 = llvm.add %748, %750  : i64
    %752 = llvm.mlir.constant(2 : index) : i64
    %753 = llvm.mul %737, %752  : i64
    %754 = llvm.add %751, %753  : i64
    %755 = llvm.add %754, %742  : i64
    %756 = llvm.getelementptr %746[%755] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %757 = llvm.load %756 : !llvm.ptr<i32>
    %758 = llvm.extractvalue %676[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %759 = llvm.mlir.constant(16 : index) : i64
    %760 = llvm.mul %727, %759  : i64
    %761 = llvm.mlir.constant(8 : index) : i64
    %762 = llvm.mul %732, %761  : i64
    %763 = llvm.add %760, %762  : i64
    %764 = llvm.mlir.constant(2 : index) : i64
    %765 = llvm.mul %745, %764  : i64
    %766 = llvm.add %763, %765  : i64
    %767 = llvm.add %766, %742  : i64
    %768 = llvm.getelementptr %758[%767] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %757, %768 : !llvm.ptr<i32>
    %769 = llvm.add %742, %741  : i64
    llvm.br ^bb133(%769 : i64)
  ^bb135:  // pred: ^bb133
    %770 = llvm.add %737, %736  : i64
    llvm.br ^bb131(%770 : i64)
  ^bb136:  // pred: ^bb131
    %771 = llvm.add %732, %731  : i64
    llvm.br ^bb129(%771 : i64)
  ^bb137:  // pred: ^bb129
    %772 = llvm.add %727, %726  : i64
    llvm.br ^bb127(%772 : i64)
  ^bb138:  // pred: ^bb127
    %773 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %774 = llvm.insertvalue %398, %773[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %775 = llvm.insertvalue %676, %774[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %775 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.extractvalue %12[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.extractvalue %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %26, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.mlir.constant(4 : i64) : i64
    %86 = llvm.getelementptr %55[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.getelementptr %56[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %91, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %92 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %93 = llvm.extractvalue %92[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %94 = llvm.extractvalue %92[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %95 = llvm.mlir.constant(2 : i64) : i64
    %96 = llvm.mlir.constant(16 : i64) : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %99 = llvm.mlir.constant(4 : i64) : i64
    %100 = llvm.call @omTensorCreateUntyped(%99) : (i64) -> !llvm.ptr<i8>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.extractvalue %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.bitcast %102 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %104 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.bitcast %104 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%100, %101, %103, %105) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %106 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%100, %106) : (!llvm.ptr<i8>, i64) -> ()
    %107 = llvm.call @omTensorGetShape(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %108 = llvm.call @omTensorGetStrides(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %109 = llvm.mlir.constant(0 : i64) : i64
    %110 = llvm.extractvalue %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %107[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %93[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %108[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %107[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %93[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %108[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(2 : i64) : i64
    %120 = llvm.extractvalue %93[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %107[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %93[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %108[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(3 : i64) : i64
    %125 = llvm.extractvalue %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %107[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.extractvalue %93[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %108[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.getelementptr %98[%129] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %100, %130 : !llvm.ptr<ptr<i8>>
    %131 = llvm.mlir.constant(4 : i64) : i64
    %132 = llvm.call @omTensorCreateUntyped(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.mlir.constant(1 : i64) : i64
    %134 = llvm.extractvalue %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.bitcast %134 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %136 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%132, %133, %135, %137) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %138 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%132, %138) : (!llvm.ptr<i8>, i64) -> ()
    %139 = llvm.call @omTensorGetShape(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %140 = llvm.call @omTensorGetStrides(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %141 = llvm.mlir.constant(0 : i64) : i64
    %142 = llvm.extractvalue %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %139[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %140[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.extractvalue %94[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %139[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %140[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(2 : i64) : i64
    %152 = llvm.extractvalue %94[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %139[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %94[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %140[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(3 : i64) : i64
    %157 = llvm.extractvalue %94[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %139[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.extractvalue %94[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %140[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.mlir.constant(1 : i64) : i64
    %162 = llvm.getelementptr %98[%161] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %132, %162 : !llvm.ptr<ptr<i8>>
    %163 = llvm.call @omTensorListCreate(%98, %95, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %163 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<146 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<146 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

