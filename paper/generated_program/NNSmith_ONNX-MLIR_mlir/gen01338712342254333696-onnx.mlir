module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 3] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 3 , 2 , 3] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 3 , 2 , 3] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 3 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[[[4, 3, 4], [5, 6, 4]]]]> : tensor<1x1x2x3xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<3 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<[[[[5, 6, 3], [3, 4, 7]]]]> : tensor<1x1x2x3xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<3 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0"]} {
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
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<2 x array<3 x i32>>>>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x array<1 x array<2 x array<3 x i32>>>>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(6 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(6 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(3 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(3 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<2 x array<3 x i32>>>>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<1 x array<1 x array<2 x array<3 x i32>>>>> to !llvm.ptr<i32>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(6 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(6 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(3 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(3 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(3 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(3 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(6 : index) : i64
    %77 = llvm.mlir.constant(18 : index) : i64
    %78 = llvm.mlir.constant(18 : index) : i64
    %79 = llvm.mlir.null : !llvm.ptr<i32>
    %80 = llvm.getelementptr %79[%78] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %81 = llvm.ptrtoint %80 : !llvm.ptr<i32> to i64
    %82 = llvm.mlir.constant(16 : index) : i64
    %83 = llvm.add %81, %82  : i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.bitcast %84 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i32> to i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.sub %82, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.urem %89, %82  : i64
    %91 = llvm.sub %89, %90  : i64
    %92 = llvm.inttoptr %91 : i64 to !llvm.ptr<i32>
    %93 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %94 = llvm.insertvalue %85, %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %92, %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.insertvalue %96, %95[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %77, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %74, %103[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %75, %104[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%106 : i64)
  ^bb1(%109: i64):  // 2 preds: ^bb0, ^bb11
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%111 : i64)
  ^bb3(%114: i64):  // 2 preds: ^bb2, ^bb10
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%116 : i64)
  ^bb5(%119: i64):  // 2 preds: ^bb4, ^bb9
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(3 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%121 : i64)
  ^bb7(%124: i64):  // 2 preds: ^bb6, ^bb8
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %126 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(6 : index) : i64
    %128 = llvm.mul %109, %127  : i64
    %129 = llvm.mlir.constant(6 : index) : i64
    %130 = llvm.mul %114, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.mlir.constant(3 : index) : i64
    %133 = llvm.mul %119, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.add %134, %124  : i64
    %136 = llvm.getelementptr %126[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %137 = llvm.load %136 : !llvm.ptr<i32>
    %138 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(18 : index) : i64
    %140 = llvm.mul %109, %139  : i64
    %141 = llvm.mlir.constant(6 : index) : i64
    %142 = llvm.mul %114, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.mlir.constant(3 : index) : i64
    %145 = llvm.mul %119, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.add %146, %124  : i64
    %148 = llvm.getelementptr %138[%147] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %137, %148 : !llvm.ptr<i32>
    %149 = llvm.add %124, %123  : i64
    llvm.br ^bb7(%149 : i64)
  ^bb9:  // pred: ^bb7
    %150 = llvm.add %119, %118  : i64
    llvm.br ^bb5(%150 : i64)
  ^bb10:  // pred: ^bb5
    %151 = llvm.add %114, %113  : i64
    llvm.br ^bb3(%151 : i64)
  ^bb11:  // pred: ^bb3
    %152 = llvm.add %109, %108  : i64
    llvm.br ^bb1(%152 : i64)
  ^bb12:  // pred: ^bb1
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%153 : i64)
  ^bb13(%156: i64):  // 2 preds: ^bb12, ^bb23
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%158 : i64)
  ^bb15(%161: i64):  // 2 preds: ^bb14, ^bb22
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%163 : i64)
  ^bb17(%166: i64):  // 2 preds: ^bb16, ^bb21
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(3 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%168 : i64)
  ^bb19(%171: i64):  // 2 preds: ^bb18, ^bb20
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.add %161, %173  : i64
    %175 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(6 : index) : i64
    %177 = llvm.mul %156, %176  : i64
    %178 = llvm.mlir.constant(6 : index) : i64
    %179 = llvm.mul %161, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.mlir.constant(3 : index) : i64
    %182 = llvm.mul %166, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.add %183, %171  : i64
    %185 = llvm.getelementptr %175[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.mlir.constant(18 : index) : i64
    %189 = llvm.mul %156, %188  : i64
    %190 = llvm.mlir.constant(6 : index) : i64
    %191 = llvm.mul %174, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.mlir.constant(3 : index) : i64
    %194 = llvm.mul %166, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.add %195, %171  : i64
    %197 = llvm.getelementptr %187[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %186, %197 : !llvm.ptr<i32>
    %198 = llvm.add %171, %170  : i64
    llvm.br ^bb19(%198 : i64)
  ^bb21:  // pred: ^bb19
    %199 = llvm.add %166, %165  : i64
    llvm.br ^bb17(%199 : i64)
  ^bb22:  // pred: ^bb17
    %200 = llvm.add %161, %160  : i64
    llvm.br ^bb15(%200 : i64)
  ^bb23:  // pred: ^bb15
    %201 = llvm.add %156, %155  : i64
    llvm.br ^bb13(%201 : i64)
  ^bb24:  // pred: ^bb13
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%202 : i64)
  ^bb25(%205: i64):  // 2 preds: ^bb24, ^bb35
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%207 : i64)
  ^bb27(%210: i64):  // 2 preds: ^bb26, ^bb34
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%212 : i64)
  ^bb29(%215: i64):  // 2 preds: ^bb28, ^bb33
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(3 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%217 : i64)
  ^bb31(%220: i64):  // 2 preds: ^bb30, ^bb32
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.add %210, %222  : i64
    %224 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.mlir.constant(6 : index) : i64
    %226 = llvm.mul %205, %225  : i64
    %227 = llvm.mlir.constant(6 : index) : i64
    %228 = llvm.mul %210, %227  : i64
    %229 = llvm.add %226, %228  : i64
    %230 = llvm.mlir.constant(3 : index) : i64
    %231 = llvm.mul %215, %230  : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.add %232, %220  : i64
    %234 = llvm.getelementptr %224[%233] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %235 = llvm.load %234 : !llvm.ptr<i32>
    %236 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.mlir.constant(18 : index) : i64
    %238 = llvm.mul %205, %237  : i64
    %239 = llvm.mlir.constant(6 : index) : i64
    %240 = llvm.mul %223, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.mlir.constant(3 : index) : i64
    %243 = llvm.mul %215, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.add %244, %220  : i64
    %246 = llvm.getelementptr %236[%245] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %235, %246 : !llvm.ptr<i32>
    %247 = llvm.add %220, %219  : i64
    llvm.br ^bb31(%247 : i64)
  ^bb33:  // pred: ^bb31
    %248 = llvm.add %215, %214  : i64
    llvm.br ^bb29(%248 : i64)
  ^bb34:  // pred: ^bb29
    %249 = llvm.add %210, %209  : i64
    llvm.br ^bb27(%249 : i64)
  ^bb35:  // pred: ^bb27
    %250 = llvm.add %205, %204  : i64
    llvm.br ^bb25(%250 : i64)
  ^bb36:  // pred: ^bb25
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(3 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(3 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(6 : index) : i64
    %257 = llvm.mlir.constant(18 : index) : i64
    %258 = llvm.mlir.constant(36 : index) : i64
    %259 = llvm.mlir.null : !llvm.ptr<i64>
    %260 = llvm.getelementptr %259[%258] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i64> to i64
    %262 = llvm.mlir.constant(16 : index) : i64
    %263 = llvm.add %261, %262  : i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr<i8>
    %265 = llvm.bitcast %264 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %266 = llvm.ptrtoint %265 : !llvm.ptr<i64> to i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.sub %262, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.urem %269, %262  : i64
    %271 = llvm.sub %269, %270  : i64
    %272 = llvm.inttoptr %271 : i64 to !llvm.ptr<i64>
    %273 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %274 = llvm.insertvalue %265, %273[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %253, %279[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %257, %281[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %256, %282[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %254, %283[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %255, %284[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%286 : i64)
  ^bb37(%289: i64):  // 2 preds: ^bb36, ^bb47
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(3 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%291 : i64)
  ^bb39(%294: i64):  // 2 preds: ^bb38, ^bb46
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%296 : i64)
  ^bb41(%299: i64):  // 2 preds: ^bb40, ^bb45
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(3 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%301 : i64)
  ^bb43(%304: i64):  // 2 preds: ^bb42, ^bb44
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %306 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.mlir.constant(18 : index) : i64
    %308 = llvm.mul %289, %307  : i64
    %309 = llvm.mlir.constant(6 : index) : i64
    %310 = llvm.mul %294, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.mlir.constant(3 : index) : i64
    %313 = llvm.mul %299, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.add %314, %304  : i64
    %316 = llvm.getelementptr %306[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.sext %317 : i32 to i64
    %319 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(18 : index) : i64
    %321 = llvm.mul %289, %320  : i64
    %322 = llvm.mlir.constant(6 : index) : i64
    %323 = llvm.mul %294, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.mlir.constant(3 : index) : i64
    %326 = llvm.mul %299, %325  : i64
    %327 = llvm.add %324, %326  : i64
    %328 = llvm.add %327, %304  : i64
    %329 = llvm.getelementptr %319[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %318, %329 : !llvm.ptr<i64>
    %330 = llvm.add %304, %303  : i64
    llvm.br ^bb43(%330 : i64)
  ^bb45:  // pred: ^bb43
    %331 = llvm.add %299, %298  : i64
    llvm.br ^bb41(%331 : i64)
  ^bb46:  // pred: ^bb41
    %332 = llvm.add %294, %293  : i64
    llvm.br ^bb39(%332 : i64)
  ^bb47:  // pred: ^bb39
    %333 = llvm.add %289, %288  : i64
    llvm.br ^bb37(%333 : i64)
  ^bb48:  // pred: ^bb37
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(3 : index) : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(3 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(6 : index) : i64
    %340 = llvm.mlir.constant(18 : index) : i64
    %341 = llvm.mlir.constant(36 : index) : i64
    %342 = llvm.mlir.null : !llvm.ptr<i32>
    %343 = llvm.getelementptr %342[%341] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %344 = llvm.ptrtoint %343 : !llvm.ptr<i32> to i64
    %345 = llvm.mlir.constant(16 : index) : i64
    %346 = llvm.add %344, %345  : i64
    %347 = llvm.call @malloc(%346) : (i64) -> !llvm.ptr<i8>
    %348 = llvm.bitcast %347 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %349 = llvm.ptrtoint %348 : !llvm.ptr<i32> to i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.sub %345, %350  : i64
    %352 = llvm.add %349, %351  : i64
    %353 = llvm.urem %352, %345  : i64
    %354 = llvm.sub %352, %353  : i64
    %355 = llvm.inttoptr %354 : i64 to !llvm.ptr<i32>
    %356 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %357 = llvm.insertvalue %348, %356[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %355, %357[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.insertvalue %359, %358[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %335, %361[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %336, %362[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %337, %363[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %340, %364[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %339, %365[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %337, %366[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %338, %367[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%369 : i64)
  ^bb49(%372: i64):  // 2 preds: ^bb48, ^bb59
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(3 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%374 : i64)
  ^bb51(%377: i64):  // 2 preds: ^bb50, ^bb58
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%379 : i64)
  ^bb53(%382: i64):  // 2 preds: ^bb52, ^bb57
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(3 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%384 : i64)
  ^bb55(%387: i64):  // 2 preds: ^bb54, ^bb56
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %389 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(18 : index) : i64
    %391 = llvm.mul %372, %390  : i64
    %392 = llvm.mlir.constant(6 : index) : i64
    %393 = llvm.mul %377, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.mlir.constant(3 : index) : i64
    %396 = llvm.mul %382, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %387  : i64
    %399 = llvm.getelementptr %389[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %400 = llvm.load %399 : !llvm.ptr<i32>
    %401 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mlir.constant(18 : index) : i64
    %403 = llvm.mul %24, %402  : i64
    %404 = llvm.mlir.constant(6 : index) : i64
    %405 = llvm.mul %377, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.mlir.constant(3 : index) : i64
    %408 = llvm.mul %382, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.add %409, %387  : i64
    %411 = llvm.getelementptr %401[%410] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %412 = llvm.load %411 : !llvm.ptr<i32>
    %413 = llvm.icmp "sgt" %400, %412 : i32
    %414 = llvm.select %413, %400, %412 : i1, i32
    %415 = llvm.extractvalue %368[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(18 : index) : i64
    %417 = llvm.mul %372, %416  : i64
    %418 = llvm.mlir.constant(6 : index) : i64
    %419 = llvm.mul %377, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.mlir.constant(3 : index) : i64
    %422 = llvm.mul %382, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.add %423, %387  : i64
    %425 = llvm.getelementptr %415[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %414, %425 : !llvm.ptr<i32>
    %426 = llvm.add %387, %386  : i64
    llvm.br ^bb55(%426 : i64)
  ^bb57:  // pred: ^bb55
    %427 = llvm.add %382, %381  : i64
    llvm.br ^bb53(%427 : i64)
  ^bb58:  // pred: ^bb53
    %428 = llvm.add %377, %376  : i64
    llvm.br ^bb51(%428 : i64)
  ^bb59:  // pred: ^bb51
    %429 = llvm.add %372, %371  : i64
    llvm.br ^bb49(%429 : i64)
  ^bb60:  // pred: ^bb49
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mlir.constant(3 : index) : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mlir.constant(3 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(6 : index) : i64
    %436 = llvm.mlir.constant(18 : index) : i64
    %437 = llvm.mlir.constant(36 : index) : i64
    %438 = llvm.mlir.null : !llvm.ptr<i64>
    %439 = llvm.getelementptr %438[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i64> to i64
    %441 = llvm.mlir.constant(16 : index) : i64
    %442 = llvm.add %440, %441  : i64
    %443 = llvm.call @malloc(%442) : (i64) -> !llvm.ptr<i8>
    %444 = llvm.bitcast %443 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %445 = llvm.ptrtoint %444 : !llvm.ptr<i64> to i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.sub %441, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.urem %448, %441  : i64
    %450 = llvm.sub %448, %449  : i64
    %451 = llvm.inttoptr %450 : i64 to !llvm.ptr<i64>
    %452 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %453 = llvm.insertvalue %444, %452[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %451, %453[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.insertvalue %455, %454[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %430, %456[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %431, %457[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %432, %458[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %433, %459[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %436, %460[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %435, %461[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %433, %462[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %434, %463[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%465 : i64)
  ^bb61(%468: i64):  // 2 preds: ^bb60, ^bb71
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(3 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%470 : i64)
  ^bb63(%473: i64):  // 2 preds: ^bb62, ^bb70
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%475 : i64)
  ^bb65(%478: i64):  // 2 preds: ^bb64, ^bb69
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(3 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%480 : i64)
  ^bb67(%483: i64):  // 2 preds: ^bb66, ^bb68
    %484 = llvm.icmp "slt" %483, %481 : i64
    llvm.cond_br %484, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %485 = llvm.extractvalue %368[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(18 : index) : i64
    %487 = llvm.mul %468, %486  : i64
    %488 = llvm.mlir.constant(6 : index) : i64
    %489 = llvm.mul %473, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.mlir.constant(3 : index) : i64
    %492 = llvm.mul %478, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.add %493, %483  : i64
    %495 = llvm.getelementptr %485[%494] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %496 = llvm.load %495 : !llvm.ptr<i32>
    %497 = llvm.sext %496 : i32 to i64
    %498 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.mlir.constant(18 : index) : i64
    %500 = llvm.mul %468, %499  : i64
    %501 = llvm.mlir.constant(6 : index) : i64
    %502 = llvm.mul %473, %501  : i64
    %503 = llvm.add %500, %502  : i64
    %504 = llvm.mlir.constant(3 : index) : i64
    %505 = llvm.mul %478, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.add %506, %483  : i64
    %508 = llvm.getelementptr %498[%507] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %497, %508 : !llvm.ptr<i64>
    %509 = llvm.add %483, %482  : i64
    llvm.br ^bb67(%509 : i64)
  ^bb69:  // pred: ^bb67
    %510 = llvm.add %478, %477  : i64
    llvm.br ^bb65(%510 : i64)
  ^bb70:  // pred: ^bb65
    %511 = llvm.add %473, %472  : i64
    llvm.br ^bb63(%511 : i64)
  ^bb71:  // pred: ^bb63
    %512 = llvm.add %468, %467  : i64
    llvm.br ^bb61(%512 : i64)
  ^bb72:  // pred: ^bb61
    %513 = llvm.mlir.constant(2 : index) : i64
    %514 = llvm.mlir.constant(3 : index) : i64
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(4 : index) : i64
    %519 = llvm.mlir.constant(12 : index) : i64
    %520 = llvm.mlir.constant(24 : index) : i64
    %521 = llvm.mlir.null : !llvm.ptr<i64>
    %522 = llvm.getelementptr %521[%520] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %523 = llvm.ptrtoint %522 : !llvm.ptr<i64> to i64
    %524 = llvm.mlir.constant(16 : index) : i64
    %525 = llvm.add %523, %524  : i64
    %526 = llvm.call @malloc(%525) : (i64) -> !llvm.ptr<i8>
    %527 = llvm.bitcast %526 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %528 = llvm.ptrtoint %527 : !llvm.ptr<i64> to i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.sub %524, %529  : i64
    %531 = llvm.add %528, %530  : i64
    %532 = llvm.urem %531, %524  : i64
    %533 = llvm.sub %531, %532  : i64
    %534 = llvm.inttoptr %533 : i64 to !llvm.ptr<i64>
    %535 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %536 = llvm.insertvalue %527, %535[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.insertvalue %534, %536[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.insertvalue %538, %537[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.insertvalue %513, %539[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.insertvalue %514, %540[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %515, %541[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %516, %542[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %519, %543[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %518, %544[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %516, %545[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %517, %546[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.mlir.constant(0 : index) : i64
    %549 = llvm.mlir.constant(2 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%548 : i64)
  ^bb73(%551: i64):  // 2 preds: ^bb72, ^bb83
    %552 = llvm.icmp "slt" %551, %549 : i64
    llvm.cond_br %552, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(3 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%553 : i64)
  ^bb75(%556: i64):  // 2 preds: ^bb74, ^bb82
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%558 : i64)
  ^bb77(%561: i64):  // 2 preds: ^bb76, ^bb81
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(2 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%563 : i64)
  ^bb79(%566: i64):  // 2 preds: ^bb78, ^bb80
    %567 = llvm.icmp "slt" %566, %564 : i64
    llvm.cond_br %567, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %568 = llvm.mlir.constant(2 : index) : i64
    %569 = llvm.mul %566, %568  : i64
    %570 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.mlir.constant(18 : index) : i64
    %572 = llvm.mul %551, %571  : i64
    %573 = llvm.mlir.constant(6 : index) : i64
    %574 = llvm.mul %556, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.mlir.constant(3 : index) : i64
    %577 = llvm.mul %561, %576  : i64
    %578 = llvm.add %575, %577  : i64
    %579 = llvm.add %578, %569  : i64
    %580 = llvm.getelementptr %570[%579] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %581 = llvm.load %580 : !llvm.ptr<i64>
    %582 = llvm.extractvalue %547[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.mlir.constant(12 : index) : i64
    %584 = llvm.mul %551, %583  : i64
    %585 = llvm.mlir.constant(4 : index) : i64
    %586 = llvm.mul %556, %585  : i64
    %587 = llvm.add %584, %586  : i64
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mul %561, %588  : i64
    %590 = llvm.add %587, %589  : i64
    %591 = llvm.add %590, %566  : i64
    %592 = llvm.getelementptr %582[%591] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %581, %592 : !llvm.ptr<i64>
    %593 = llvm.add %566, %565  : i64
    llvm.br ^bb79(%593 : i64)
  ^bb81:  // pred: ^bb79
    %594 = llvm.add %561, %560  : i64
    llvm.br ^bb77(%594 : i64)
  ^bb82:  // pred: ^bb77
    %595 = llvm.add %556, %555  : i64
    llvm.br ^bb75(%595 : i64)
  ^bb83:  // pred: ^bb75
    %596 = llvm.add %551, %550  : i64
    llvm.br ^bb73(%596 : i64)
  ^bb84:  // pred: ^bb73
    %597 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %598 = llvm.insertvalue %285, %597[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %599 = llvm.insertvalue %547, %598[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %599 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %133[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.getelementptr %91[%154] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %125, %155 : !llvm.ptr<ptr<i8>>
    %156 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %156 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

