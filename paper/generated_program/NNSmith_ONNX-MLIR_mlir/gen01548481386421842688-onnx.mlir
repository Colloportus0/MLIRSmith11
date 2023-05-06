module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[7, 5]], [[4, 4]]], [[[6, 7]], [[7, 6]]]]> : tensor<2x2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i1>, %arg6: !llvm.ptr<i1>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v7_0", "v0_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(-2147483648 : i32) : i32
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(4 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.mlir.null : !llvm.ptr<i1>
    %52 = llvm.getelementptr %51[%50] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i1> to i64
    %54 = llvm.mlir.constant(16 : index) : i64
    %55 = llvm.add %53, %54  : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i1> to i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.sub %54, %59  : i64
    %61 = llvm.add %58, %60  : i64
    %62 = llvm.urem %61, %54  : i64
    %63 = llvm.sub %61, %62  : i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr<i1>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %66 = llvm.insertvalue %57, %65[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %43, %69[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %44, %70[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %45, %71[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %46, %72[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %49, %73[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %46, %75[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %47, %76[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%78 : i64)
  ^bb1(%81: i64):  // 2 preds: ^bb0, ^bb11
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%83 : i64)
  ^bb3(%86: i64):  // 2 preds: ^bb2, ^bb10
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%88 : i64)
  ^bb5(%91: i64):  // 2 preds: ^bb4, ^bb9
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%93 : i64)
  ^bb7(%96: i64):  // 2 preds: ^bb6, ^bb8
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %98 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mul %81, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %86, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mul %91, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.add %106, %96  : i64
    %108 = llvm.getelementptr %98[%107] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %109 = llvm.load %108 : !llvm.ptr<i1>
    %110 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %81, %111  : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %86, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mul %91, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.add %118, %96  : i64
    %120 = llvm.getelementptr %110[%119] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %121 = llvm.load %120 : !llvm.ptr<i1>
    %122 = llvm.xor %109, %121  : i1
    %123 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mul %81, %124  : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mul %86, %126  : i64
    %128 = llvm.add %125, %127  : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mul %91, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.add %131, %96  : i64
    %133 = llvm.getelementptr %123[%132] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %122, %133 : !llvm.ptr<i1>
    %134 = llvm.add %96, %95  : i64
    llvm.br ^bb7(%134 : i64)
  ^bb9:  // pred: ^bb7
    %135 = llvm.add %91, %90  : i64
    llvm.br ^bb5(%135 : i64)
  ^bb10:  // pred: ^bb5
    %136 = llvm.add %86, %85  : i64
    llvm.br ^bb3(%136 : i64)
  ^bb11:  // pred: ^bb3
    %137 = llvm.add %81, %80  : i64
    llvm.br ^bb1(%137 : i64)
  ^bb12:  // pred: ^bb1
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mlir.constant(8 : index) : i64
    %146 = llvm.mlir.null : !llvm.ptr<i32>
    %147 = llvm.getelementptr %146[%145] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i32> to i64
    %149 = llvm.mlir.constant(16 : index) : i64
    %150 = llvm.add %148, %149  : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i32> to i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.sub %149, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.urem %156, %149  : i64
    %158 = llvm.sub %156, %157  : i64
    %159 = llvm.inttoptr %158 : i64 to !llvm.ptr<i32>
    %160 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %161 = llvm.insertvalue %152, %160[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.insertvalue %163, %162[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %138, %164[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %139, %165[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %140, %166[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %144, %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %143, %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %141, %170[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %142, %171[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%173 : i64)
  ^bb13(%176: i64):  // 2 preds: ^bb12, ^bb23
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%178 : i64)
  ^bb15(%181: i64):  // 2 preds: ^bb14, ^bb22
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%183 : i64)
  ^bb17(%186: i64):  // 2 preds: ^bb16, ^bb21
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%188 : i64)
  ^bb19(%191: i64):  // 2 preds: ^bb18, ^bb20
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %193 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mul %19, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %19, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %186, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.add %201, %191  : i64
    %203 = llvm.getelementptr %193[%202] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %204 = llvm.load %203 : !llvm.ptr<i1>
    %205 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.load %206 : !llvm.ptr<i32>
    %208 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mul %176, %209  : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %181, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mul %186, %214  : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.add %216, %191  : i64
    %218 = llvm.getelementptr %208[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %219 = llvm.load %218 : !llvm.ptr<i32>
    %220 = llvm.select %204, %207, %219 : i1, i32
    %221 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mul %176, %222  : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %181, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mul %186, %227  : i64
    %229 = llvm.add %226, %228  : i64
    %230 = llvm.add %229, %191  : i64
    %231 = llvm.getelementptr %221[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %220, %231 : !llvm.ptr<i32>
    %232 = llvm.add %191, %190  : i64
    llvm.br ^bb19(%232 : i64)
  ^bb21:  // pred: ^bb19
    %233 = llvm.add %186, %185  : i64
    llvm.br ^bb17(%233 : i64)
  ^bb22:  // pred: ^bb17
    %234 = llvm.add %181, %180  : i64
    llvm.br ^bb15(%234 : i64)
  ^bb23:  // pred: ^bb15
    %235 = llvm.add %176, %175  : i64
    llvm.br ^bb13(%235 : i64)
  ^bb24:  // pred: ^bb13
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(4 : index) : i64
    %242 = llvm.mlir.null : !llvm.ptr<i32>
    %243 = llvm.getelementptr %242[%241] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %244 = llvm.ptrtoint %243 : !llvm.ptr<i32> to i64
    %245 = llvm.mlir.constant(16 : index) : i64
    %246 = llvm.add %244, %245  : i64
    %247 = llvm.call @malloc(%246) : (i64) -> !llvm.ptr<i8>
    %248 = llvm.bitcast %247 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %249 = llvm.ptrtoint %248 : !llvm.ptr<i32> to i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.sub %245, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.urem %252, %245  : i64
    %254 = llvm.sub %252, %253  : i64
    %255 = llvm.inttoptr %254 : i64 to !llvm.ptr<i32>
    %256 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %257 = llvm.insertvalue %248, %256[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.insertvalue %255, %257[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.insertvalue %259, %258[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %261 = llvm.insertvalue %236, %260[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %262 = llvm.insertvalue %237, %261[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %263 = llvm.insertvalue %238, %262[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %264 = llvm.insertvalue %240, %263[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %265 = llvm.insertvalue %238, %264[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %266 = llvm.insertvalue %239, %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%267 : i64)
  ^bb25(%270: i64):  // 2 preds: ^bb24, ^bb32
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%272 : i64)
  ^bb27(%275: i64):  // 2 preds: ^bb26, ^bb31
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%277 : i64)
  ^bb29(%280: i64):  // 2 preds: ^bb28, ^bb30
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %282 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mul %270, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %275, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.add %287, %280  : i64
    %289 = llvm.getelementptr %282[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %18, %289 : !llvm.ptr<i32>
    %290 = llvm.add %280, %279  : i64
    llvm.br ^bb29(%290 : i64)
  ^bb31:  // pred: ^bb29
    %291 = llvm.add %275, %274  : i64
    llvm.br ^bb27(%291 : i64)
  ^bb32:  // pred: ^bb27
    %292 = llvm.add %270, %269  : i64
    llvm.br ^bb25(%292 : i64)
  ^bb33:  // pred: ^bb25
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%293 : i64)
  ^bb34(%296: i64):  // 2 preds: ^bb33, ^bb44
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%298 : i64)
  ^bb36(%301: i64):  // 2 preds: ^bb35, ^bb43
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%303 : i64)
  ^bb38(%306: i64):  // 2 preds: ^bb37, ^bb42
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%308 : i64)
  ^bb40(%311: i64):  // 2 preds: ^bb39, ^bb41
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %313 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(4 : index) : i64
    %315 = llvm.mul %296, %314  : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mul %301, %316  : i64
    %318 = llvm.add %315, %317  : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mul %306, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.add %321, %311  : i64
    %323 = llvm.getelementptr %313[%322] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %324 = llvm.load %323 : !llvm.ptr<i32>
    %325 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %296, %326  : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mul %306, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.add %330, %311  : i64
    %332 = llvm.getelementptr %325[%331] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %333 = llvm.load %332 : !llvm.ptr<i32>
    %334 = llvm.icmp "sgt" %333, %324 : i32
    %335 = llvm.select %334, %333, %324 : i1, i32
    %336 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %296, %337  : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mul %306, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.add %341, %311  : i64
    %343 = llvm.getelementptr %336[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %335, %343 : !llvm.ptr<i32>
    %344 = llvm.add %311, %310  : i64
    llvm.br ^bb40(%344 : i64)
  ^bb42:  // pred: ^bb40
    %345 = llvm.add %306, %305  : i64
    llvm.br ^bb38(%345 : i64)
  ^bb43:  // pred: ^bb38
    %346 = llvm.add %301, %300  : i64
    llvm.br ^bb36(%346 : i64)
  ^bb44:  // pred: ^bb36
    %347 = llvm.add %296, %295  : i64
    llvm.br ^bb34(%347 : i64)
  ^bb45:  // pred: ^bb34
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mlir.constant(8 : index) : i64
    %356 = llvm.mlir.null : !llvm.ptr<i32>
    %357 = llvm.getelementptr %356[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i32> to i64
    %359 = llvm.mlir.constant(16 : index) : i64
    %360 = llvm.add %358, %359  : i64
    %361 = llvm.call @malloc(%360) : (i64) -> !llvm.ptr<i8>
    %362 = llvm.bitcast %361 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i32> to i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.sub %359, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.urem %366, %359  : i64
    %368 = llvm.sub %366, %367  : i64
    %369 = llvm.inttoptr %368 : i64 to !llvm.ptr<i32>
    %370 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %371 = llvm.insertvalue %362, %370[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %369, %371[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.insertvalue %373, %372[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %348, %374[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %350, %376[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %351, %377[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %354, %378[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %353, %379[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %351, %380[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %352, %381[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%383 : i64)
  ^bb46(%386: i64):  // 2 preds: ^bb45, ^bb56
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%388 : i64)
  ^bb48(%391: i64):  // 2 preds: ^bb47, ^bb55
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%393 : i64)
  ^bb50(%396: i64):  // 2 preds: ^bb49, ^bb54
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%398 : i64)
  ^bb52(%401: i64):  // 2 preds: ^bb51, ^bb53
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %403 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mul %386, %404  : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mul %391, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mul %396, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.add %411, %401  : i64
    %413 = llvm.getelementptr %403[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.load %413 : !llvm.ptr<i32>
    %415 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mul %391, %416  : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mul %396, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.add %420, %401  : i64
    %422 = llvm.getelementptr %415[%421] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %423 = llvm.load %422 : !llvm.ptr<i32>
    %424 = llvm.icmp "sgt" %414, %423 : i32
    %425 = llvm.select %424, %414, %423 : i1, i32
    %426 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mul %386, %427  : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mul %391, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %396, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.add %434, %401  : i64
    %436 = llvm.getelementptr %426[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %425, %436 : !llvm.ptr<i32>
    %437 = llvm.add %401, %400  : i64
    llvm.br ^bb52(%437 : i64)
  ^bb54:  // pred: ^bb52
    %438 = llvm.add %396, %395  : i64
    llvm.br ^bb50(%438 : i64)
  ^bb55:  // pred: ^bb50
    %439 = llvm.add %391, %390  : i64
    llvm.br ^bb48(%439 : i64)
  ^bb56:  // pred: ^bb48
    %440 = llvm.add %386, %385  : i64
    llvm.br ^bb46(%440 : i64)
  ^bb57:  // pred: ^bb46
    %441 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %442 = llvm.insertvalue %42, %441[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %443 = llvm.insertvalue %77, %442[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %444 = llvm.insertvalue %382, %443[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %444 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v7_0", "v0_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %0[%23] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %67 = llvm.extractvalue %64[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %68 = llvm.mlir.constant(3 : i64) : i64
    %69 = llvm.mlir.constant(24 : i64) : i64
    %70 = llvm.call @malloc(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.bitcast %70 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %72 = llvm.mlir.constant(4 : i64) : i64
    %73 = llvm.call @omTensorCreateUntyped(%72) : (i64) -> !llvm.ptr<i8>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.bitcast %75 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %77 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.bitcast %77 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%73, %74, %76, %78) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %79 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%73, %79) : (!llvm.ptr<i8>, i64) -> ()
    %80 = llvm.call @omTensorGetShape(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.call @omTensorGetStrides(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %80[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %81[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %80[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %81[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(2 : i64) : i64
    %93 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %80[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %81[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.mlir.constant(3 : i64) : i64
    %98 = llvm.extractvalue %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %80[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.extractvalue %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %81[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.getelementptr %71[%102] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %73, %103 : !llvm.ptr<ptr<i8>>
    %104 = llvm.mlir.constant(4 : i64) : i64
    %105 = llvm.call @omTensorCreateUntyped(%104) : (i64) -> !llvm.ptr<i8>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.bitcast %107 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %109 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.bitcast %109 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%105, %106, %108, %110) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %111 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%105, %111) : (!llvm.ptr<i8>, i64) -> ()
    %112 = llvm.call @omTensorGetShape(%105) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %113 = llvm.call @omTensorGetStrides(%105) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %114 = llvm.mlir.constant(0 : i64) : i64
    %115 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %112[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %113[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %112[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %113[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(2 : i64) : i64
    %125 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %112[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %113[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.mlir.constant(3 : i64) : i64
    %130 = llvm.extractvalue %66[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %112[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %66[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %113[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.getelementptr %71[%134] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %105, %135 : !llvm.ptr<ptr<i8>>
    %136 = llvm.mlir.constant(4 : i64) : i64
    %137 = llvm.call @omTensorCreateUntyped(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.mlir.constant(1 : i64) : i64
    %139 = llvm.extractvalue %67[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %141 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.bitcast %141 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%137, %138, %140, %142) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %143 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%137, %143) : (!llvm.ptr<i8>, i64) -> ()
    %144 = llvm.call @omTensorGetShape(%137) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %145 = llvm.call @omTensorGetStrides(%137) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %146 = llvm.mlir.constant(0 : i64) : i64
    %147 = llvm.extractvalue %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %144[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %145[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(1 : i64) : i64
    %152 = llvm.extractvalue %67[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %144[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %145[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(2 : i64) : i64
    %157 = llvm.extractvalue %67[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %144[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.extractvalue %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %145[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.mlir.constant(3 : i64) : i64
    %162 = llvm.extractvalue %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %144[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.extractvalue %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.getelementptr %145[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.mlir.constant(2 : i64) : i64
    %167 = llvm.getelementptr %71[%166] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %137, %167 : !llvm.ptr<ptr<i8>>
    %168 = llvm.call @omTensorListCreate(%71, %68, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %168 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
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

