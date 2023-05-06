module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 2 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(2147483647 : i32) : i32
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %23 = llvm.bitcast %22 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mlir.constant(8 : index) : i64
    %44 = llvm.mlir.constant(16 : index) : i64
    %45 = llvm.mlir.constant(16 : index) : i64
    %46 = llvm.mlir.null : !llvm.ptr<i32>
    %47 = llvm.getelementptr %46[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(16 : index) : i64
    %50 = llvm.add %48, %49  : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i32> to i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.sub %49, %54  : i64
    %56 = llvm.add %53, %55  : i64
    %57 = llvm.urem %56, %49  : i64
    %58 = llvm.sub %56, %57  : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %61 = llvm.insertvalue %52, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %36, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %37, %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %38, %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.insertvalue %39, %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.insertvalue %40, %68[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.insertvalue %44, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.insertvalue %43, %70[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %42, %71[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.insertvalue %40, %72[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.insertvalue %41, %73[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%75 : i64)
  ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb14
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%80 : i64)
  ^bb3(%83: i64):  // 2 preds: ^bb2, ^bb13
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%85 : i64)
  ^bb5(%88: i64):  // 2 preds: ^bb4, ^bb12
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%90 : i64)
  ^bb7(%93: i64):  // 2 preds: ^bb6, ^bb11
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%95 : i64)
  ^bb9(%98: i64):  // 2 preds: ^bb8, ^bb10
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %100 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.getelementptr %100[%21] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.mlir.constant(16 : index) : i64
    %105 = llvm.mul %78, %104  : i64
    %106 = llvm.mlir.constant(8 : index) : i64
    %107 = llvm.mul %83, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %88, %109  : i64
    %111 = llvm.add %108, %110  : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %93, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.add %114, %98  : i64
    %116 = llvm.getelementptr %103[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.mul %102, %117  : i32
    %119 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %120 = llvm.mlir.constant(16 : index) : i64
    %121 = llvm.mul %78, %120  : i64
    %122 = llvm.mlir.constant(8 : index) : i64
    %123 = llvm.mul %83, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.mlir.constant(4 : index) : i64
    %126 = llvm.mul %88, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mul %93, %128  : i64
    %130 = llvm.add %127, %129  : i64
    %131 = llvm.add %130, %98  : i64
    %132 = llvm.getelementptr %119[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %118, %132 : !llvm.ptr<i32>
    %133 = llvm.add %98, %97  : i64
    llvm.br ^bb9(%133 : i64)
  ^bb11:  // pred: ^bb9
    %134 = llvm.add %93, %92  : i64
    llvm.br ^bb7(%134 : i64)
  ^bb12:  // pred: ^bb7
    %135 = llvm.add %88, %87  : i64
    llvm.br ^bb5(%135 : i64)
  ^bb13:  // pred: ^bb5
    %136 = llvm.add %83, %82  : i64
    llvm.br ^bb3(%136 : i64)
  ^bb14:  // pred: ^bb3
    %137 = llvm.add %78, %77  : i64
    llvm.br ^bb1(%137 : i64)
  ^bb15:  // pred: ^bb1
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mlir.constant(8 : index) : i64
    %146 = llvm.mlir.constant(16 : index) : i64
    %147 = llvm.mlir.constant(16 : index) : i64
    %148 = llvm.mlir.null : !llvm.ptr<i32>
    %149 = llvm.getelementptr %148[%147] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i32> to i64
    %151 = llvm.mlir.constant(16 : index) : i64
    %152 = llvm.add %150, %151  : i64
    %153 = llvm.call @malloc(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.bitcast %153 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i32> to i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.sub %151, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.urem %158, %151  : i64
    %160 = llvm.sub %158, %159  : i64
    %161 = llvm.inttoptr %160 : i64 to !llvm.ptr<i32>
    %162 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %163 = llvm.insertvalue %154, %162[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %164 = llvm.insertvalue %161, %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.insertvalue %165, %164[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %167 = llvm.insertvalue %138, %166[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %168 = llvm.insertvalue %139, %167[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %169 = llvm.insertvalue %140, %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %170 = llvm.insertvalue %141, %169[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %171 = llvm.insertvalue %142, %170[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %172 = llvm.insertvalue %146, %171[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %173 = llvm.insertvalue %145, %172[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %174 = llvm.insertvalue %144, %173[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %175 = llvm.insertvalue %142, %174[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %176 = llvm.insertvalue %143, %175[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%177 : i64)
  ^bb16(%180: i64):  // 2 preds: ^bb15, ^bb29
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%182 : i64)
  ^bb18(%185: i64):  // 2 preds: ^bb17, ^bb28
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%187 : i64)
  ^bb20(%190: i64):  // 2 preds: ^bb19, ^bb27
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%192 : i64)
  ^bb22(%195: i64):  // 2 preds: ^bb21, ^bb26
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%197 : i64)
  ^bb24(%200: i64):  // 2 preds: ^bb23, ^bb25
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %202 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %203 = llvm.mlir.constant(16 : index) : i64
    %204 = llvm.mul %180, %203  : i64
    %205 = llvm.mlir.constant(8 : index) : i64
    %206 = llvm.mul %185, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.mlir.constant(4 : index) : i64
    %209 = llvm.mul %190, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %195, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.add %213, %200  : i64
    %215 = llvm.getelementptr %202[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %216 = llvm.load %215 : !llvm.ptr<i32>
    %217 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %218 = llvm.load %217 : !llvm.ptr<i32>
    %219 = llvm.icmp "slt" %216, %218 : i32
    %220 = llvm.select %219, %218, %216 : i1, i32
    %221 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %222 = llvm.load %221 : !llvm.ptr<i32>
    %223 = llvm.icmp "slt" %220, %222 : i32
    %224 = llvm.select %223, %220, %222 : i1, i32
    %225 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %226 = llvm.mlir.constant(16 : index) : i64
    %227 = llvm.mul %180, %226  : i64
    %228 = llvm.mlir.constant(8 : index) : i64
    %229 = llvm.mul %185, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mul %190, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mul %195, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.add %236, %200  : i64
    %238 = llvm.getelementptr %225[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %224, %238 : !llvm.ptr<i32>
    %239 = llvm.add %200, %199  : i64
    llvm.br ^bb24(%239 : i64)
  ^bb26:  // pred: ^bb24
    %240 = llvm.add %195, %194  : i64
    llvm.br ^bb22(%240 : i64)
  ^bb27:  // pred: ^bb22
    %241 = llvm.add %190, %189  : i64
    llvm.br ^bb20(%241 : i64)
  ^bb28:  // pred: ^bb20
    %242 = llvm.add %185, %184  : i64
    llvm.br ^bb18(%242 : i64)
  ^bb29:  // pred: ^bb18
    %243 = llvm.add %180, %179  : i64
    llvm.br ^bb16(%243 : i64)
  ^bb30:  // pred: ^bb16
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(4 : index) : i64
    %251 = llvm.mlir.constant(8 : index) : i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.mlir.constant(16 : index) : i64
    %254 = llvm.mlir.null : !llvm.ptr<i32>
    %255 = llvm.getelementptr %254[%253] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i32> to i64
    %257 = llvm.mlir.constant(16 : index) : i64
    %258 = llvm.add %256, %257  : i64
    %259 = llvm.call @malloc(%258) : (i64) -> !llvm.ptr<i8>
    %260 = llvm.bitcast %259 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i32> to i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.sub %257, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.urem %264, %257  : i64
    %266 = llvm.sub %264, %265  : i64
    %267 = llvm.inttoptr %266 : i64 to !llvm.ptr<i32>
    %268 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %269 = llvm.insertvalue %260, %268[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %270 = llvm.insertvalue %267, %269[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %273 = llvm.insertvalue %244, %272[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %274 = llvm.insertvalue %245, %273[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %275 = llvm.insertvalue %246, %274[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %276 = llvm.insertvalue %247, %275[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %277 = llvm.insertvalue %248, %276[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %278 = llvm.insertvalue %252, %277[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %279 = llvm.insertvalue %251, %278[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %280 = llvm.insertvalue %250, %279[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %281 = llvm.insertvalue %248, %280[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %282 = llvm.insertvalue %249, %281[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%283 : i64)
  ^bb31(%286: i64):  // 2 preds: ^bb30, ^bb44
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb32, ^bb45
  ^bb32:  // pred: ^bb31
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%288 : i64)
  ^bb33(%291: i64):  // 2 preds: ^bb32, ^bb43
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%293 : i64)
  ^bb35(%296: i64):  // 2 preds: ^bb34, ^bb42
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%298 : i64)
  ^bb37(%301: i64):  // 2 preds: ^bb36, ^bb41
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%303 : i64)
  ^bb39(%306: i64):  // 2 preds: ^bb38, ^bb40
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %308 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %309 = llvm.mlir.constant(16 : index) : i64
    %310 = llvm.mul %286, %309  : i64
    %311 = llvm.mlir.constant(8 : index) : i64
    %312 = llvm.mul %291, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.mlir.constant(4 : index) : i64
    %315 = llvm.mul %296, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mul %301, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.add %319, %306  : i64
    %321 = llvm.getelementptr %308[%320] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %322 = llvm.load %321 : !llvm.ptr<i32>
    %323 = llvm.mlir.constant(false) : i1
    %324 = "llvm.intr.abs"(%322, %323) : (i32, i1) -> i32
    %325 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %326 = llvm.mlir.constant(16 : index) : i64
    %327 = llvm.mul %286, %326  : i64
    %328 = llvm.mlir.constant(8 : index) : i64
    %329 = llvm.mul %291, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mul %296, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mul %301, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.add %336, %306  : i64
    %338 = llvm.getelementptr %325[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %324, %338 : !llvm.ptr<i32>
    %339 = llvm.add %306, %305  : i64
    llvm.br ^bb39(%339 : i64)
  ^bb41:  // pred: ^bb39
    %340 = llvm.add %301, %300  : i64
    llvm.br ^bb37(%340 : i64)
  ^bb42:  // pred: ^bb37
    %341 = llvm.add %296, %295  : i64
    llvm.br ^bb35(%341 : i64)
  ^bb43:  // pred: ^bb35
    %342 = llvm.add %291, %290  : i64
    llvm.br ^bb33(%342 : i64)
  ^bb44:  // pred: ^bb33
    %343 = llvm.add %286, %285  : i64
    llvm.br ^bb31(%343 : i64)
  ^bb45:  // pred: ^bb31
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mlir.constant(8 : index) : i64
    %351 = llvm.mlir.constant(8 : index) : i64
    %352 = llvm.mlir.null : !llvm.ptr<i32>
    %353 = llvm.getelementptr %352[%351] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i32> to i64
    %355 = llvm.mlir.constant(16 : index) : i64
    %356 = llvm.add %354, %355  : i64
    %357 = llvm.call @malloc(%356) : (i64) -> !llvm.ptr<i8>
    %358 = llvm.bitcast %357 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i32> to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %355, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %355  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr<i32>
    %366 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %344, %370[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %345, %371[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %346, %372[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %347, %373[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %350, %374[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %347, %376[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %348, %377[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%379 : i64)
  ^bb46(%382: i64):  // 2 preds: ^bb45, ^bb56
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%384 : i64)
  ^bb48(%387: i64):  // 2 preds: ^bb47, ^bb55
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%389 : i64)
  ^bb50(%392: i64):  // 2 preds: ^bb49, ^bb54
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%394 : i64)
  ^bb52(%397: i64):  // 2 preds: ^bb51, ^bb53
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %399 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(8 : index) : i64
    %401 = llvm.mul %382, %400  : i64
    %402 = llvm.mlir.constant(4 : index) : i64
    %403 = llvm.mul %387, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %392, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.add %407, %397  : i64
    %409 = llvm.getelementptr %399[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %20, %409 : !llvm.ptr<i32>
    %410 = llvm.add %397, %396  : i64
    llvm.br ^bb52(%410 : i64)
  ^bb54:  // pred: ^bb52
    %411 = llvm.add %392, %391  : i64
    llvm.br ^bb50(%411 : i64)
  ^bb55:  // pred: ^bb50
    %412 = llvm.add %387, %386  : i64
    llvm.br ^bb48(%412 : i64)
  ^bb56:  // pred: ^bb48
    %413 = llvm.add %382, %381  : i64
    llvm.br ^bb46(%413 : i64)
  ^bb57:  // pred: ^bb46
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%414 : i64)
  ^bb58(%417: i64):  // 2 preds: ^bb57, ^bb71
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb59, ^bb72
  ^bb59:  // pred: ^bb58
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%419 : i64)
  ^bb60(%422: i64):  // 2 preds: ^bb59, ^bb70
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb61, ^bb71
  ^bb61:  // pred: ^bb60
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%424 : i64)
  ^bb62(%427: i64):  // 2 preds: ^bb61, ^bb69
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb63, ^bb70
  ^bb63:  // pred: ^bb62
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%429 : i64)
  ^bb64(%432: i64):  // 2 preds: ^bb63, ^bb68
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb65, ^bb69
  ^bb65:  // pred: ^bb64
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%434 : i64)
  ^bb66(%437: i64):  // 2 preds: ^bb65, ^bb67
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %439 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %440 = llvm.mlir.constant(16 : index) : i64
    %441 = llvm.mul %417, %440  : i64
    %442 = llvm.mlir.constant(8 : index) : i64
    %443 = llvm.mul %422, %442  : i64
    %444 = llvm.add %441, %443  : i64
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mul %427, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mul %432, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.add %450, %437  : i64
    %452 = llvm.getelementptr %439[%451] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %453 = llvm.load %452 : !llvm.ptr<i32>
    %454 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(8 : index) : i64
    %456 = llvm.mul %417, %455  : i64
    %457 = llvm.mlir.constant(4 : index) : i64
    %458 = llvm.mul %422, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %427, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.add %462, %437  : i64
    %464 = llvm.getelementptr %454[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %465 = llvm.load %464 : !llvm.ptr<i32>
    %466 = llvm.icmp "slt" %465, %453 : i32
    %467 = llvm.select %466, %465, %453 : i1, i32
    %468 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(8 : index) : i64
    %470 = llvm.mul %417, %469  : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mul %422, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %427, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.add %476, %437  : i64
    %478 = llvm.getelementptr %468[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %467, %478 : !llvm.ptr<i32>
    %479 = llvm.add %437, %436  : i64
    llvm.br ^bb66(%479 : i64)
  ^bb68:  // pred: ^bb66
    %480 = llvm.add %432, %431  : i64
    llvm.br ^bb64(%480 : i64)
  ^bb69:  // pred: ^bb64
    %481 = llvm.add %427, %426  : i64
    llvm.br ^bb62(%481 : i64)
  ^bb70:  // pred: ^bb62
    %482 = llvm.add %422, %421  : i64
    llvm.br ^bb60(%482 : i64)
  ^bb71:  // pred: ^bb60
    %483 = llvm.add %417, %416  : i64
    llvm.br ^bb58(%483 : i64)
  ^bb72:  // pred: ^bb58
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mlir.constant(8 : index) : i64
    %492 = llvm.mlir.constant(16 : index) : i64
    %493 = llvm.mlir.constant(16 : index) : i64
    %494 = llvm.mlir.null : !llvm.ptr<i1>
    %495 = llvm.getelementptr %494[%493] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %496 = llvm.ptrtoint %495 : !llvm.ptr<i1> to i64
    %497 = llvm.mlir.constant(16 : index) : i64
    %498 = llvm.add %496, %497  : i64
    %499 = llvm.call @malloc(%498) : (i64) -> !llvm.ptr<i8>
    %500 = llvm.bitcast %499 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %501 = llvm.ptrtoint %500 : !llvm.ptr<i1> to i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.sub %497, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.urem %504, %497  : i64
    %506 = llvm.sub %504, %505  : i64
    %507 = llvm.inttoptr %506 : i64 to !llvm.ptr<i1>
    %508 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %509 = llvm.insertvalue %500, %508[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %510 = llvm.insertvalue %507, %509[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.insertvalue %511, %510[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %513 = llvm.insertvalue %484, %512[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %514 = llvm.insertvalue %485, %513[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %515 = llvm.insertvalue %486, %514[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %516 = llvm.insertvalue %487, %515[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %517 = llvm.insertvalue %488, %516[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %518 = llvm.insertvalue %492, %517[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %519 = llvm.insertvalue %491, %518[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %520 = llvm.insertvalue %490, %519[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %521 = llvm.insertvalue %488, %520[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %522 = llvm.insertvalue %489, %521[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%523 : i64)
  ^bb73(%526: i64):  // 2 preds: ^bb72, ^bb86
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb74, ^bb87
  ^bb74:  // pred: ^bb73
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(2 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%528 : i64)
  ^bb75(%531: i64):  // 2 preds: ^bb74, ^bb85
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb76, ^bb86
  ^bb76:  // pred: ^bb75
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%533 : i64)
  ^bb77(%536: i64):  // 2 preds: ^bb76, ^bb84
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb78, ^bb85
  ^bb78:  // pred: ^bb77
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%538 : i64)
  ^bb79(%541: i64):  // 2 preds: ^bb78, ^bb83
    %542 = llvm.icmp "slt" %541, %539 : i64
    llvm.cond_br %542, ^bb80, ^bb84
  ^bb80:  // pred: ^bb79
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%543 : i64)
  ^bb81(%546: i64):  // 2 preds: ^bb80, ^bb82
    %547 = llvm.icmp "slt" %546, %544 : i64
    llvm.cond_br %547, ^bb82, ^bb83
  ^bb82:  // pred: ^bb81
    %548 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %549 = llvm.mlir.constant(16 : index) : i64
    %550 = llvm.mul %526, %549  : i64
    %551 = llvm.mlir.constant(8 : index) : i64
    %552 = llvm.mul %531, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.mlir.constant(4 : index) : i64
    %555 = llvm.mul %536, %554  : i64
    %556 = llvm.add %553, %555  : i64
    %557 = llvm.mlir.constant(2 : index) : i64
    %558 = llvm.mul %541, %557  : i64
    %559 = llvm.add %556, %558  : i64
    %560 = llvm.add %559, %546  : i64
    %561 = llvm.getelementptr %548[%560] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %562 = llvm.load %561 : !llvm.ptr<i32>
    %563 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.mlir.constant(8 : index) : i64
    %565 = llvm.mul %21, %564  : i64
    %566 = llvm.mlir.constant(4 : index) : i64
    %567 = llvm.mul %536, %566  : i64
    %568 = llvm.add %565, %567  : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mul %541, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.add %571, %546  : i64
    %573 = llvm.getelementptr %563[%572] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %574 = llvm.load %573 : !llvm.ptr<i32>
    %575 = llvm.icmp "slt" %562, %574 : i32
    %576 = llvm.extractvalue %522[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %577 = llvm.mlir.constant(16 : index) : i64
    %578 = llvm.mul %526, %577  : i64
    %579 = llvm.mlir.constant(8 : index) : i64
    %580 = llvm.mul %531, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.mlir.constant(4 : index) : i64
    %583 = llvm.mul %536, %582  : i64
    %584 = llvm.add %581, %583  : i64
    %585 = llvm.mlir.constant(2 : index) : i64
    %586 = llvm.mul %541, %585  : i64
    %587 = llvm.add %584, %586  : i64
    %588 = llvm.add %587, %546  : i64
    %589 = llvm.getelementptr %576[%588] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %575, %589 : !llvm.ptr<i1>
    %590 = llvm.add %546, %545  : i64
    llvm.br ^bb81(%590 : i64)
  ^bb83:  // pred: ^bb81
    %591 = llvm.add %541, %540  : i64
    llvm.br ^bb79(%591 : i64)
  ^bb84:  // pred: ^bb79
    %592 = llvm.add %536, %535  : i64
    llvm.br ^bb77(%592 : i64)
  ^bb85:  // pred: ^bb77
    %593 = llvm.add %531, %530  : i64
    llvm.br ^bb75(%593 : i64)
  ^bb86:  // pred: ^bb75
    %594 = llvm.add %526, %525  : i64
    llvm.br ^bb73(%594 : i64)
  ^bb87:  // pred: ^bb73
    llvm.return %522 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>
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
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %70, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>>
    %72 = llvm.mlir.constant(1 : i64) : i64
    %73 = llvm.mlir.constant(8 : i64) : i64
    %74 = llvm.call @malloc(%73) : (i64) -> !llvm.ptr<i8>
    %75 = llvm.bitcast %74 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %76 = llvm.mlir.constant(5 : i64) : i64
    %77 = llvm.call @omTensorCreateUntyped(%76) : (i64) -> !llvm.ptr<i8>
    %78 = llvm.mlir.constant(1 : i64) : i64
    %79 = llvm.extractvalue %71[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.bitcast %79 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %81 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%77, %78, %80, %82) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %83 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%77, %83) : (!llvm.ptr<i8>, i64) -> ()
    %84 = llvm.call @omTensorGetShape(%77) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %85 = llvm.call @omTensorGetStrides(%77) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.extractvalue %71[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.getelementptr %84[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %71[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.getelementptr %85[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.extractvalue %71[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.getelementptr %84[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %71[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %95 = llvm.getelementptr %85[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(2 : i64) : i64
    %97 = llvm.extractvalue %71[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.getelementptr %84[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %71[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.getelementptr %85[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(3 : i64) : i64
    %102 = llvm.extractvalue %71[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.getelementptr %84[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %71[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.getelementptr %85[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(4 : i64) : i64
    %107 = llvm.extractvalue %71[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.getelementptr %84[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %71[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.getelementptr %85[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(0 : i64) : i64
    %112 = llvm.getelementptr %75[%111] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %77, %112 : !llvm.ptr<ptr<i8>>
    %113 = llvm.call @omTensorListCreate(%75, %72, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %113 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<74 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<74 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

