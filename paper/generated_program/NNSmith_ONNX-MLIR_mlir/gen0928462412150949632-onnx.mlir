module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 4 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.insertvalue %arg21, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.insertvalue %arg22, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.insertvalue %arg23, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.insertvalue %arg20, %25[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.mlir.constant(0 : i64) : i64
    %29 = llvm.mlir.constant(2147483647 : i32) : i32
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(4 : index) : i64
    %38 = llvm.mlir.constant(8 : index) : i64
    %39 = llvm.mlir.constant(16 : index) : i64
    %40 = llvm.mlir.constant(16 : index) : i64
    %41 = llvm.mlir.null : !llvm.ptr<i32>
    %42 = llvm.getelementptr %41[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.mlir.constant(16 : index) : i64
    %45 = llvm.add %43, %44  : i64
    %46 = llvm.call @malloc(%45) : (i64) -> !llvm.ptr<i8>
    %47 = llvm.bitcast %46 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.sub %44, %49  : i64
    %51 = llvm.add %48, %50  : i64
    %52 = llvm.urem %51, %44  : i64
    %53 = llvm.sub %51, %52  : i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr<i32>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %56 = llvm.insertvalue %47, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %31, %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %32, %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %33, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %34, %62[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %35, %63[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %39, %64[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %38, %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %37, %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.insertvalue %35, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.insertvalue %36, %68[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%70 : i64)
  ^bb1(%73: i64):  // 2 preds: ^bb0, ^bb14
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%75 : i64)
  ^bb3(%78: i64):  // 2 preds: ^bb2, ^bb13
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%80 : i64)
  ^bb5(%83: i64):  // 2 preds: ^bb4, ^bb12
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%85 : i64)
  ^bb7(%88: i64):  // 2 preds: ^bb6, ^bb11
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%90 : i64)
  ^bb9(%93: i64):  // 2 preds: ^bb8, ^bb10
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %95 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mul %73, %96  : i64
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mul %30, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.mlir.constant(4 : index) : i64
    %102 = llvm.mul %30, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mul %88, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.add %106, %93  : i64
    %108 = llvm.getelementptr %95[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %111 = llvm.mlir.constant(16 : index) : i64
    %112 = llvm.mul %73, %111  : i64
    %113 = llvm.mlir.constant(8 : index) : i64
    %114 = llvm.mul %78, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.mlir.constant(4 : index) : i64
    %117 = llvm.mul %83, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %88, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.add %121, %93  : i64
    %123 = llvm.getelementptr %110[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %124 = llvm.load %123 : !llvm.ptr<i32>
    %125 = llvm.mul %109, %124  : i32
    %126 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %127 = llvm.mlir.constant(16 : index) : i64
    %128 = llvm.mul %73, %127  : i64
    %129 = llvm.mlir.constant(8 : index) : i64
    %130 = llvm.mul %78, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.mlir.constant(4 : index) : i64
    %133 = llvm.mul %83, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mul %88, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.add %137, %93  : i64
    %139 = llvm.getelementptr %126[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %125, %139 : !llvm.ptr<i32>
    %140 = llvm.add %93, %92  : i64
    llvm.br ^bb9(%140 : i64)
  ^bb11:  // pred: ^bb9
    %141 = llvm.add %88, %87  : i64
    llvm.br ^bb7(%141 : i64)
  ^bb12:  // pred: ^bb7
    %142 = llvm.add %83, %82  : i64
    llvm.br ^bb5(%142 : i64)
  ^bb13:  // pred: ^bb5
    %143 = llvm.add %78, %77  : i64
    llvm.br ^bb3(%143 : i64)
  ^bb14:  // pred: ^bb3
    %144 = llvm.add %73, %72  : i64
    llvm.br ^bb1(%144 : i64)
  ^bb15:  // pred: ^bb1
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mlir.constant(8 : index) : i64
    %152 = llvm.mlir.constant(16 : index) : i64
    %153 = llvm.mlir.null : !llvm.ptr<i32>
    %154 = llvm.getelementptr %153[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i32> to i64
    %156 = llvm.mlir.constant(16 : index) : i64
    %157 = llvm.add %155, %156  : i64
    %158 = llvm.call @malloc(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.bitcast %158 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i32> to i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.sub %156, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.urem %163, %156  : i64
    %165 = llvm.sub %163, %164  : i64
    %166 = llvm.inttoptr %165 : i64 to !llvm.ptr<i32>
    %167 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %168 = llvm.insertvalue %159, %167[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %145, %171[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %146, %172[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %147, %173[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %148, %174[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %151, %175[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %150, %176[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %148, %177[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %149, %178[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%180 : i64)
  ^bb16(%183: i64):  // 2 preds: ^bb15, ^bb26
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%185 : i64)
  ^bb18(%188: i64):  // 2 preds: ^bb17, ^bb25
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%190 : i64)
  ^bb20(%193: i64):  // 2 preds: ^bb19, ^bb24
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%195 : i64)
  ^bb22(%198: i64):  // 2 preds: ^bb21, ^bb23
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %200 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(8 : index) : i64
    %202 = llvm.mul %183, %201  : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mul %188, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mul %193, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.add %208, %198  : i64
    %210 = llvm.getelementptr %200[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %29, %210 : !llvm.ptr<i32>
    %211 = llvm.add %198, %197  : i64
    llvm.br ^bb22(%211 : i64)
  ^bb24:  // pred: ^bb22
    %212 = llvm.add %193, %192  : i64
    llvm.br ^bb20(%212 : i64)
  ^bb25:  // pred: ^bb20
    %213 = llvm.add %188, %187  : i64
    llvm.br ^bb18(%213 : i64)
  ^bb26:  // pred: ^bb18
    %214 = llvm.add %183, %182  : i64
    llvm.br ^bb16(%214 : i64)
  ^bb27:  // pred: ^bb16
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%215 : i64)
  ^bb28(%218: i64):  // 2 preds: ^bb27, ^bb41
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%220 : i64)
  ^bb30(%223: i64):  // 2 preds: ^bb29, ^bb40
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%225 : i64)
  ^bb32(%228: i64):  // 2 preds: ^bb31, ^bb39
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%230 : i64)
  ^bb34(%233: i64):  // 2 preds: ^bb33, ^bb38
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%235 : i64)
  ^bb36(%238: i64):  // 2 preds: ^bb35, ^bb37
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %240 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %241 = llvm.mlir.constant(16 : index) : i64
    %242 = llvm.mul %218, %241  : i64
    %243 = llvm.mlir.constant(8 : index) : i64
    %244 = llvm.mul %223, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mul %228, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mul %233, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.add %251, %238  : i64
    %253 = llvm.getelementptr %240[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.mlir.constant(8 : index) : i64
    %257 = llvm.mul %223, %256  : i64
    %258 = llvm.mlir.constant(4 : index) : i64
    %259 = llvm.mul %228, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mul %233, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.add %263, %238  : i64
    %265 = llvm.getelementptr %255[%264] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %266 = llvm.load %265 : !llvm.ptr<i32>
    %267 = llvm.icmp "slt" %266, %254 : i32
    %268 = llvm.select %267, %266, %254 : i1, i32
    %269 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(8 : index) : i64
    %271 = llvm.mul %223, %270  : i64
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mul %228, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mul %233, %275  : i64
    %277 = llvm.add %274, %276  : i64
    %278 = llvm.add %277, %238  : i64
    %279 = llvm.getelementptr %269[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %268, %279 : !llvm.ptr<i32>
    %280 = llvm.add %238, %237  : i64
    llvm.br ^bb36(%280 : i64)
  ^bb38:  // pred: ^bb36
    %281 = llvm.add %233, %232  : i64
    llvm.br ^bb34(%281 : i64)
  ^bb39:  // pred: ^bb34
    %282 = llvm.add %228, %227  : i64
    llvm.br ^bb32(%282 : i64)
  ^bb40:  // pred: ^bb32
    %283 = llvm.add %223, %222  : i64
    llvm.br ^bb30(%283 : i64)
  ^bb41:  // pred: ^bb30
    %284 = llvm.add %218, %217  : i64
    llvm.br ^bb28(%284 : i64)
  ^bb42:  // pred: ^bb28
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mlir.constant(16 : index) : i64
    %292 = llvm.mlir.constant(32 : index) : i64
    %293 = llvm.mlir.null : !llvm.ptr<i32>
    %294 = llvm.getelementptr %293[%292] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i32> to i64
    %296 = llvm.mlir.constant(16 : index) : i64
    %297 = llvm.add %295, %296  : i64
    %298 = llvm.call @malloc(%297) : (i64) -> !llvm.ptr<i8>
    %299 = llvm.bitcast %298 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i32> to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %296, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %296  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr<i32>
    %307 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %287, %313[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %288, %314[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %291, %315[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %290, %316[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %288, %317[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %289, %318[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%320 : i64)
  ^bb43(%323: i64):  // 2 preds: ^bb42, ^bb53
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%325 : i64)
  ^bb45(%328: i64):  // 2 preds: ^bb44, ^bb52
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%330 : i64)
  ^bb47(%333: i64):  // 2 preds: ^bb46, ^bb51
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%335 : i64)
  ^bb49(%338: i64):  // 2 preds: ^bb48, ^bb50
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %340 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(8 : index) : i64
    %342 = llvm.mul %323, %341  : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mul %328, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %333, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.add %348, %338  : i64
    %350 = llvm.getelementptr %340[%349] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %351 = llvm.load %350 : !llvm.ptr<i32>
    %352 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(16 : index) : i64
    %354 = llvm.mul %323, %353  : i64
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mul %328, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mul %333, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.add %360, %338  : i64
    %362 = llvm.getelementptr %352[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %351, %362 : !llvm.ptr<i32>
    %363 = llvm.add %338, %337  : i64
    llvm.br ^bb49(%363 : i64)
  ^bb51:  // pred: ^bb49
    %364 = llvm.add %333, %332  : i64
    llvm.br ^bb47(%364 : i64)
  ^bb52:  // pred: ^bb47
    %365 = llvm.add %328, %327  : i64
    llvm.br ^bb45(%365 : i64)
  ^bb53:  // pred: ^bb45
    %366 = llvm.add %323, %322  : i64
    llvm.br ^bb43(%366 : i64)
  ^bb54:  // pred: ^bb43
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%367 : i64)
  ^bb55(%370: i64):  // 2 preds: ^bb54, ^bb65
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%372 : i64)
  ^bb57(%375: i64):  // 2 preds: ^bb56, ^bb64
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%377 : i64)
  ^bb59(%380: i64):  // 2 preds: ^bb58, ^bb63
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%382 : i64)
  ^bb61(%385: i64):  // 2 preds: ^bb60, ^bb62
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.add %375, %387  : i64
    %389 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(8 : index) : i64
    %391 = llvm.mul %370, %390  : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mul %375, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mul %380, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %385  : i64
    %399 = llvm.getelementptr %389[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %400 = llvm.load %399 : !llvm.ptr<i32>
    %401 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mlir.constant(16 : index) : i64
    %403 = llvm.mul %370, %402  : i64
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mul %388, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mul %380, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.add %409, %385  : i64
    %411 = llvm.getelementptr %401[%410] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %400, %411 : !llvm.ptr<i32>
    %412 = llvm.add %385, %384  : i64
    llvm.br ^bb61(%412 : i64)
  ^bb63:  // pred: ^bb61
    %413 = llvm.add %380, %379  : i64
    llvm.br ^bb59(%413 : i64)
  ^bb64:  // pred: ^bb59
    %414 = llvm.add %375, %374  : i64
    llvm.br ^bb57(%414 : i64)
  ^bb65:  // pred: ^bb57
    %415 = llvm.add %370, %369  : i64
    llvm.br ^bb55(%415 : i64)
  ^bb66:  // pred: ^bb55
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mlir.constant(8 : index) : i64
    %423 = llvm.mlir.constant(16 : index) : i64
    %424 = llvm.mlir.null : !llvm.ptr<i64>
    %425 = llvm.getelementptr %424[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i64> to i64
    %427 = llvm.mlir.constant(16 : index) : i64
    %428 = llvm.add %426, %427  : i64
    %429 = llvm.call @malloc(%428) : (i64) -> !llvm.ptr<i8>
    %430 = llvm.bitcast %429 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %431 = llvm.ptrtoint %430 : !llvm.ptr<i64> to i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.sub %427, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.urem %434, %427  : i64
    %436 = llvm.sub %434, %435  : i64
    %437 = llvm.inttoptr %436 : i64 to !llvm.ptr<i64>
    %438 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %439 = llvm.insertvalue %430, %438[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %437, %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.insertvalue %441, %440[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %417, %443[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %418, %444[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %422, %446[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %421, %447[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %419, %448[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %420, %449[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%451 : i64)
  ^bb67(%454: i64):  // 2 preds: ^bb66, ^bb77
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%456 : i64)
  ^bb69(%459: i64):  // 2 preds: ^bb68, ^bb76
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%461 : i64)
  ^bb71(%464: i64):  // 2 preds: ^bb70, ^bb75
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%466 : i64)
  ^bb73(%469: i64):  // 2 preds: ^bb72, ^bb74
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %471 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mlir.constant(8 : index) : i64
    %473 = llvm.mul %454, %472  : i64
    %474 = llvm.mlir.constant(4 : index) : i64
    %475 = llvm.mul %459, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mul %464, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.add %479, %469  : i64
    %481 = llvm.getelementptr %471[%480] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %482 = llvm.load %481 : !llvm.ptr<i32>
    %483 = llvm.sext %482 : i32 to i64
    %484 = llvm.extractvalue %450[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.mlir.constant(8 : index) : i64
    %486 = llvm.mul %454, %485  : i64
    %487 = llvm.mlir.constant(4 : index) : i64
    %488 = llvm.mul %459, %487  : i64
    %489 = llvm.add %486, %488  : i64
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mul %464, %490  : i64
    %492 = llvm.add %489, %491  : i64
    %493 = llvm.add %492, %469  : i64
    %494 = llvm.getelementptr %484[%493] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %483, %494 : !llvm.ptr<i64>
    %495 = llvm.add %469, %468  : i64
    llvm.br ^bb73(%495 : i64)
  ^bb75:  // pred: ^bb73
    %496 = llvm.add %464, %463  : i64
    llvm.br ^bb71(%496 : i64)
  ^bb76:  // pred: ^bb71
    %497 = llvm.add %459, %458  : i64
    llvm.br ^bb69(%497 : i64)
  ^bb77:  // pred: ^bb69
    %498 = llvm.add %454, %453  : i64
    llvm.br ^bb67(%498 : i64)
  ^bb78:  // pred: ^bb67
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mlir.constant(2 : index) : i64
    %501 = llvm.mlir.constant(2 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(4 : index) : i64
    %504 = llvm.mlir.constant(8 : index) : i64
    %505 = llvm.mlir.null : !llvm.ptr<i64>
    %506 = llvm.getelementptr %505[%504] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %507 = llvm.ptrtoint %506 : !llvm.ptr<i64> to i64
    %508 = llvm.mlir.constant(16 : index) : i64
    %509 = llvm.add %507, %508  : i64
    %510 = llvm.call @malloc(%509) : (i64) -> !llvm.ptr<i8>
    %511 = llvm.bitcast %510 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %512 = llvm.ptrtoint %511 : !llvm.ptr<i64> to i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.sub %508, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.urem %515, %508  : i64
    %517 = llvm.sub %515, %516  : i64
    %518 = llvm.inttoptr %517 : i64 to !llvm.ptr<i64>
    %519 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %520 = llvm.insertvalue %511, %519[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %521 = llvm.insertvalue %518, %520[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.insertvalue %522, %521[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %524 = llvm.insertvalue %499, %523[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %525 = llvm.insertvalue %500, %524[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %526 = llvm.insertvalue %501, %525[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %527 = llvm.insertvalue %503, %526[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %528 = llvm.insertvalue %501, %527[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %529 = llvm.insertvalue %502, %528[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%530 : i64)
  ^bb79(%533: i64):  // 2 preds: ^bb78, ^bb86
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb80, ^bb87
  ^bb80:  // pred: ^bb79
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%535 : i64)
  ^bb81(%538: i64):  // 2 preds: ^bb80, ^bb85
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb82, ^bb86
  ^bb82:  // pred: ^bb81
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.mlir.constant(2 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%540 : i64)
  ^bb83(%543: i64):  // 2 preds: ^bb82, ^bb84
    %544 = llvm.icmp "slt" %543, %541 : i64
    llvm.cond_br %544, ^bb84, ^bb85
  ^bb84:  // pred: ^bb83
    %545 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mul %533, %546  : i64
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mul %538, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.add %550, %543  : i64
    %552 = llvm.getelementptr %545[%551] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %28, %552 : !llvm.ptr<i64>
    %553 = llvm.add %543, %542  : i64
    llvm.br ^bb83(%553 : i64)
  ^bb85:  // pred: ^bb83
    %554 = llvm.add %538, %537  : i64
    llvm.br ^bb81(%554 : i64)
  ^bb86:  // pred: ^bb81
    %555 = llvm.add %533, %532  : i64
    llvm.br ^bb79(%555 : i64)
  ^bb87:  // pred: ^bb79
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(2 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%556 : i64)
  ^bb88(%559: i64):  // 2 preds: ^bb87, ^bb98
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(2 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%561 : i64)
  ^bb90(%564: i64):  // 2 preds: ^bb89, ^bb97
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(2 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%566 : i64)
  ^bb92(%569: i64):  // 2 preds: ^bb91, ^bb96
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%571 : i64)
  ^bb94(%574: i64):  // 2 preds: ^bb93, ^bb95
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %576 = llvm.extractvalue %450[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.mlir.constant(8 : index) : i64
    %578 = llvm.mul %559, %577  : i64
    %579 = llvm.mlir.constant(4 : index) : i64
    %580 = llvm.mul %564, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.mlir.constant(2 : index) : i64
    %583 = llvm.mul %569, %582  : i64
    %584 = llvm.add %581, %583  : i64
    %585 = llvm.add %584, %574  : i64
    %586 = llvm.getelementptr %576[%585] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %587 = llvm.load %586 : !llvm.ptr<i64>
    %588 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %589 = llvm.mlir.constant(4 : index) : i64
    %590 = llvm.mul %559, %589  : i64
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %564, %591  : i64
    %593 = llvm.add %590, %592  : i64
    %594 = llvm.add %593, %574  : i64
    %595 = llvm.getelementptr %588[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %596 = llvm.load %595 : !llvm.ptr<i64>
    %597 = llvm.add %596, %587  : i64
    %598 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %599 = llvm.mlir.constant(4 : index) : i64
    %600 = llvm.mul %559, %599  : i64
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mul %564, %601  : i64
    %603 = llvm.add %600, %602  : i64
    %604 = llvm.add %603, %574  : i64
    %605 = llvm.getelementptr %598[%604] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %597, %605 : !llvm.ptr<i64>
    %606 = llvm.add %574, %573  : i64
    llvm.br ^bb94(%606 : i64)
  ^bb96:  // pred: ^bb94
    %607 = llvm.add %569, %568  : i64
    llvm.br ^bb92(%607 : i64)
  ^bb97:  // pred: ^bb92
    %608 = llvm.add %564, %563  : i64
    llvm.br ^bb90(%608 : i64)
  ^bb98:  // pred: ^bb90
    %609 = llvm.add %559, %558  : i64
    llvm.br ^bb88(%609 : i64)
  ^bb99:  // pred: ^bb88
    %610 = llvm.mlir.constant(2 : index) : i64
    %611 = llvm.mlir.constant(2 : index) : i64
    %612 = llvm.mlir.constant(2 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mlir.constant(8 : index) : i64
    %616 = llvm.mlir.null : !llvm.ptr<i64>
    %617 = llvm.getelementptr %616[%615] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %618 = llvm.ptrtoint %617 : !llvm.ptr<i64> to i64
    %619 = llvm.mlir.constant(16 : index) : i64
    %620 = llvm.add %618, %619  : i64
    %621 = llvm.call @malloc(%620) : (i64) -> !llvm.ptr<i8>
    %622 = llvm.bitcast %621 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %623 = llvm.ptrtoint %622 : !llvm.ptr<i64> to i64
    %624 = llvm.mlir.constant(1 : index) : i64
    %625 = llvm.sub %619, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.urem %626, %619  : i64
    %628 = llvm.sub %626, %627  : i64
    %629 = llvm.inttoptr %628 : i64 to !llvm.ptr<i64>
    %630 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %631 = llvm.insertvalue %622, %630[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %632 = llvm.insertvalue %629, %631[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.insertvalue %633, %632[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %635 = llvm.insertvalue %610, %634[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %636 = llvm.insertvalue %611, %635[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %637 = llvm.insertvalue %612, %636[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %638 = llvm.insertvalue %614, %637[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %639 = llvm.insertvalue %612, %638[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %640 = llvm.insertvalue %613, %639[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.null : !llvm.ptr<i64>
    %643 = llvm.getelementptr %642[%641] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %644 = llvm.ptrtoint %643 : !llvm.ptr<i64> to i64
    %645 = llvm.alloca %644 x i64 : (i64) -> !llvm.ptr<i64>
    %646 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %647 = llvm.insertvalue %645, %646[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %648 = llvm.insertvalue %645, %647[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %649 = llvm.mlir.constant(0 : index) : i64
    %650 = llvm.insertvalue %649, %648[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%651 : i64)
  ^bb100(%654: i64):  // 2 preds: ^bb99, ^bb110
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(2 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%656 : i64)
  ^bb102(%659: i64):  // 2 preds: ^bb101, ^bb109
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %661 = llvm.mlir.constant(0 : index) : i64
    %662 = llvm.mlir.constant(2 : index) : i64
    %663 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%661 : i64)
  ^bb104(%664: i64):  // 2 preds: ^bb103, ^bb108
    %665 = llvm.icmp "slt" %664, %662 : i64
    llvm.cond_br %665, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %666 = llvm.extractvalue %650[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %28, %666 : !llvm.ptr<i64>
    %667 = llvm.mlir.constant(0 : index) : i64
    %668 = llvm.mlir.constant(2 : index) : i64
    %669 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%667 : i64)
  ^bb106(%670: i64):  // 2 preds: ^bb105, ^bb107
    %671 = llvm.icmp "slt" %670, %668 : i64
    llvm.cond_br %671, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %672 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %673 = llvm.mlir.constant(4 : index) : i64
    %674 = llvm.mul %654, %673  : i64
    %675 = llvm.mlir.constant(2 : index) : i64
    %676 = llvm.mul %659, %675  : i64
    %677 = llvm.add %674, %676  : i64
    %678 = llvm.add %677, %670  : i64
    %679 = llvm.getelementptr %672[%678] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %680 = llvm.load %679 : !llvm.ptr<i64>
    %681 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %682 = llvm.mlir.constant(4 : index) : i64
    %683 = llvm.mul %654, %682  : i64
    %684 = llvm.mlir.constant(2 : index) : i64
    %685 = llvm.mul %670, %684  : i64
    %686 = llvm.add %683, %685  : i64
    %687 = llvm.add %686, %664  : i64
    %688 = llvm.getelementptr %681[%687] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %689 = llvm.load %688 : !llvm.ptr<i64>
    %690 = llvm.extractvalue %650[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %691 = llvm.load %690 : !llvm.ptr<i64>
    %692 = llvm.mul %680, %689  : i64
    %693 = llvm.add %691, %692  : i64
    %694 = llvm.extractvalue %650[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %693, %694 : !llvm.ptr<i64>
    %695 = llvm.add %670, %669  : i64
    llvm.br ^bb106(%695 : i64)
  ^bb108:  // pred: ^bb106
    %696 = llvm.extractvalue %650[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %697 = llvm.load %696 : !llvm.ptr<i64>
    %698 = llvm.extractvalue %640[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %699 = llvm.mlir.constant(4 : index) : i64
    %700 = llvm.mul %654, %699  : i64
    %701 = llvm.mlir.constant(2 : index) : i64
    %702 = llvm.mul %659, %701  : i64
    %703 = llvm.add %700, %702  : i64
    %704 = llvm.add %703, %664  : i64
    %705 = llvm.getelementptr %698[%704] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %697, %705 : !llvm.ptr<i64>
    %706 = llvm.add %664, %663  : i64
    llvm.br ^bb104(%706 : i64)
  ^bb109:  // pred: ^bb104
    %707 = llvm.add %659, %658  : i64
    llvm.br ^bb102(%707 : i64)
  ^bb110:  // pred: ^bb102
    %708 = llvm.add %654, %653  : i64
    llvm.br ^bb100(%708 : i64)
  ^bb111:  // pred: ^bb100
    %709 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %710 = llvm.insertvalue %319, %709[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %711 = llvm.insertvalue %640, %710[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %711 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.extractvalue %14[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.extractvalue %14[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %28, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.getelementptr %62[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %94 = llvm.load %93 : !llvm.ptr<i64>
    %95 = llvm.insertvalue %94, %91[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %96 = llvm.getelementptr %63[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %97 = llvm.load %96 : !llvm.ptr<i64>
    %98 = llvm.insertvalue %97, %95[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %98, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %99 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %100 = llvm.extractvalue %99[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %101 = llvm.extractvalue %99[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %102 = llvm.mlir.constant(2 : i64) : i64
    %103 = llvm.mlir.constant(16 : i64) : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.bitcast %104 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %106 = llvm.mlir.constant(4 : i64) : i64
    %107 = llvm.call @omTensorCreateUntyped(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %100[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.bitcast %109 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %111 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.bitcast %111 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%107, %108, %110, %112) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %113 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%107, %113) : (!llvm.ptr<i8>, i64) -> ()
    %114 = llvm.call @omTensorGetShape(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.call @omTensorGetStrides(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %116 = llvm.mlir.constant(0 : i64) : i64
    %117 = llvm.extractvalue %100[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %114[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %115[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %100[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %114[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %100[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %115[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(2 : i64) : i64
    %127 = llvm.extractvalue %100[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %114[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %100[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %115[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(3 : i64) : i64
    %132 = llvm.extractvalue %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %114[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %100[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %115[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(0 : i64) : i64
    %137 = llvm.getelementptr %105[%136] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %107, %137 : !llvm.ptr<ptr<i8>>
    %138 = llvm.mlir.constant(3 : i64) : i64
    %139 = llvm.call @omTensorCreateUntyped(%138) : (i64) -> !llvm.ptr<i8>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.extractvalue %101[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.bitcast %141 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %143 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.bitcast %143 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%139, %140, %142, %144) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %145 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%139, %145) : (!llvm.ptr<i8>, i64) -> ()
    %146 = llvm.call @omTensorGetShape(%139) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %147 = llvm.call @omTensorGetStrides(%139) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %148 = llvm.mlir.constant(0 : i64) : i64
    %149 = llvm.extractvalue %101[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.getelementptr %146[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %101[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.getelementptr %147[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(1 : i64) : i64
    %154 = llvm.extractvalue %101[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.getelementptr %146[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %101[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %157 = llvm.getelementptr %147[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(2 : i64) : i64
    %159 = llvm.extractvalue %101[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.getelementptr %146[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %101[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %162 = llvm.getelementptr %147[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(1 : i64) : i64
    %164 = llvm.getelementptr %105[%163] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %139, %164 : !llvm.ptr<ptr<i8>>
    %165 = llvm.call @omTensorListCreate(%105, %102, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %165 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<150 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<150 x i8>> to !llvm.ptr<i8>
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

