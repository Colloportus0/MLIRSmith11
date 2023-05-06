module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_10(dense<[[[[7, 5], [7, 7]], [[3, 3], [7, 6]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_9(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_8(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_7(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<4 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(8 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(4 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.mlir.constant(8 : index) : i64
    %87 = llvm.mlir.constant(8 : index) : i64
    %88 = llvm.mlir.null : !llvm.ptr<i32>
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i32> to i64
    %91 = llvm.mlir.constant(16 : index) : i64
    %92 = llvm.add %90, %91  : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.bitcast %93 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i32> to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %91, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.urem %98, %91  : i64
    %100 = llvm.sub %98, %99  : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr<i32>
    %102 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %80, %106[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %81, %107[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %82, %108[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %86, %110[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %83, %112[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %84, %113[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%115 : i64)
  ^bb1(%118: i64):  // 2 preds: ^bb0, ^bb11
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%120 : i64)
  ^bb3(%123: i64):  // 2 preds: ^bb2, ^bb10
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%125 : i64)
  ^bb5(%128: i64):  // 2 preds: ^bb4, ^bb9
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%130 : i64)
  ^bb7(%133: i64):  // 2 preds: ^bb6, ^bb8
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %135 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(8 : index) : i64
    %137 = llvm.mul %118, %136  : i64
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mul %123, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mul %128, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.add %143, %133  : i64
    %145 = llvm.getelementptr %135[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.mlir.constant(false) : i1
    %148 = "llvm.intr.abs"(%146, %147) : (i32, i1) -> i32
    %149 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(8 : index) : i64
    %151 = llvm.mul %118, %150  : i64
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mul %123, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %128, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.add %157, %133  : i64
    %159 = llvm.getelementptr %149[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %148, %159 : !llvm.ptr<i32>
    %160 = llvm.add %133, %132  : i64
    llvm.br ^bb7(%160 : i64)
  ^bb9:  // pred: ^bb7
    %161 = llvm.add %128, %127  : i64
    llvm.br ^bb5(%161 : i64)
  ^bb10:  // pred: ^bb5
    %162 = llvm.add %123, %122  : i64
    llvm.br ^bb3(%162 : i64)
  ^bb11:  // pred: ^bb3
    %163 = llvm.add %118, %117  : i64
    llvm.br ^bb1(%163 : i64)
  ^bb12:  // pred: ^bb1
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.null : !llvm.ptr<i32>
    %171 = llvm.getelementptr %170[%169] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i32> to i64
    %173 = llvm.mlir.constant(16 : index) : i64
    %174 = llvm.add %172, %173  : i64
    %175 = llvm.call @malloc(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.bitcast %175 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i32> to i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.sub %173, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.urem %180, %173  : i64
    %182 = llvm.sub %180, %181  : i64
    %183 = llvm.inttoptr %182 : i64 to !llvm.ptr<i32>
    %184 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %185 = llvm.insertvalue %176, %184[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %183, %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.insertvalue %187, %186[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %164, %188[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %165, %189[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %166, %190[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %167, %191[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %165, %192[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %166, %193[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %167, %194[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %168, %195[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%197 : i64)
  ^bb13(%200: i64):  // 2 preds: ^bb12, ^bb23
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%202 : i64)
  ^bb15(%205: i64):  // 2 preds: ^bb14, ^bb22
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%207 : i64)
  ^bb17(%210: i64):  // 2 preds: ^bb16, ^bb21
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%212 : i64)
  ^bb19(%215: i64):  // 2 preds: ^bb18, ^bb20
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %217 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mul %200, %218  : i64
    %220 = llvm.add %219, %205  : i64
    %221 = llvm.add %220, %210  : i64
    %222 = llvm.add %221, %215  : i64
    %223 = llvm.getelementptr %217[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.load %223 : !llvm.ptr<i32>
    %225 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %226 = llvm.load %225 : !llvm.ptr<i32>
    %227 = llvm.icmp "slt" %224, %226 : i32
    %228 = llvm.select %227, %226, %224 : i1, i32
    %229 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.icmp "slt" %228, %230 : i32
    %232 = llvm.select %231, %228, %230 : i1, i32
    %233 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mul %200, %234  : i64
    %236 = llvm.add %235, %205  : i64
    %237 = llvm.add %236, %210  : i64
    %238 = llvm.add %237, %215  : i64
    %239 = llvm.getelementptr %233[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %232, %239 : !llvm.ptr<i32>
    %240 = llvm.add %215, %214  : i64
    llvm.br ^bb19(%240 : i64)
  ^bb21:  // pred: ^bb19
    %241 = llvm.add %210, %209  : i64
    llvm.br ^bb17(%241 : i64)
  ^bb22:  // pred: ^bb17
    %242 = llvm.add %205, %204  : i64
    llvm.br ^bb15(%242 : i64)
  ^bb23:  // pred: ^bb15
    %243 = llvm.add %200, %199  : i64
    llvm.br ^bb13(%243 : i64)
  ^bb24:  // pred: ^bb13
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.null : !llvm.ptr<i64>
    %247 = llvm.getelementptr %246[%244] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i64> to i64
    %249 = llvm.mlir.constant(16 : index) : i64
    %250 = llvm.add %248, %249  : i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr<i8>
    %252 = llvm.bitcast %251 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i64> to i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.sub %249, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.urem %256, %249  : i64
    %258 = llvm.sub %256, %257  : i64
    %259 = llvm.inttoptr %258 : i64 to !llvm.ptr<i64>
    %260 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %261 = llvm.insertvalue %252, %260[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %244, %264[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %245, %265[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%267 : i64)
  ^bb25(%270: i64):  // 2 preds: ^bb24, ^bb26
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %272 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %273 : !llvm.ptr<i64>
    %274 = llvm.add %270, %269  : i64
    llvm.br ^bb25(%274 : i64)
  ^bb27:  // pred: ^bb25
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.null : !llvm.ptr<i64>
    %278 = llvm.getelementptr %277[%275] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i64> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i64> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<i64>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.insertvalue %275, %295[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %276, %296[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%298 : i64)
  ^bb28(%301: i64):  // 2 preds: ^bb27, ^bb29
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %303 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.getelementptr %303[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %305 = llvm.load %304 : !llvm.ptr<i64>
    %306 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %307 = llvm.load %306 : !llvm.ptr<i64>
    %308 = llvm.mul %305, %307  : i64
    %309 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.getelementptr %309[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %308, %310 : !llvm.ptr<i64>
    %311 = llvm.add %301, %300  : i64
    llvm.br ^bb28(%311 : i64)
  ^bb30:  // pred: ^bb28
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.null : !llvm.ptr<i1>
    %315 = llvm.getelementptr %314[%312] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i1> to i64
    %317 = llvm.mlir.constant(16 : index) : i64
    %318 = llvm.add %316, %317  : i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr<i8>
    %320 = llvm.bitcast %319 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i1> to i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.sub %317, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.urem %324, %317  : i64
    %326 = llvm.sub %324, %325  : i64
    %327 = llvm.inttoptr %326 : i64 to !llvm.ptr<i1>
    %328 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %329 = llvm.insertvalue %320, %328[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.insertvalue %327, %329[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.insertvalue %331, %330[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.insertvalue %312, %332[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.insertvalue %313, %333[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%335 : i64)
  ^bb31(%338: i64):  // 2 preds: ^bb30, ^bb32
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %340 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%338] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %342 = llvm.load %341 : !llvm.ptr<i64>
    %343 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.getelementptr %343[%338] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.load %344 : !llvm.ptr<i64>
    %346 = llvm.icmp "eq" %342, %345 : i64
    %347 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%338] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %346, %348 : !llvm.ptr<i1>
    %349 = llvm.add %338, %337  : i64
    llvm.br ^bb31(%349 : i64)
  ^bb33:  // pred: ^bb31
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.null : !llvm.ptr<i64>
    %353 = llvm.getelementptr %352[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i64> to i64
    %355 = llvm.mlir.constant(16 : index) : i64
    %356 = llvm.add %354, %355  : i64
    %357 = llvm.call @malloc(%356) : (i64) -> !llvm.ptr<i8>
    %358 = llvm.bitcast %357 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i64> to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %355, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %355  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr<i64>
    %366 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.insertvalue %350, %370[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.insertvalue %351, %371[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%373 : i64)
  ^bb34(%376: i64):  // 2 preds: ^bb33, ^bb35
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %378 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.getelementptr %378[%376] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %380 = llvm.load %379 : !llvm.ptr<i1>
    %381 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.getelementptr %381[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %383 = llvm.load %382 : !llvm.ptr<i64>
    %384 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.select %380, %383, %386 : i1, i64
    %388 = llvm.extractvalue %372[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %387, %389 : !llvm.ptr<i64>
    %390 = llvm.add %376, %375  : i64
    llvm.br ^bb34(%390 : i64)
  ^bb36:  // pred: ^bb34
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(2 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mlir.null : !llvm.ptr<i32>
    %398 = llvm.getelementptr %397[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %399 = llvm.ptrtoint %398 : !llvm.ptr<i32> to i64
    %400 = llvm.mlir.constant(16 : index) : i64
    %401 = llvm.add %399, %400  : i64
    %402 = llvm.call @malloc(%401) : (i64) -> !llvm.ptr<i8>
    %403 = llvm.bitcast %402 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %404 = llvm.ptrtoint %403 : !llvm.ptr<i32> to i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.sub %400, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.urem %407, %400  : i64
    %409 = llvm.sub %407, %408  : i64
    %410 = llvm.inttoptr %409 : i64 to !llvm.ptr<i32>
    %411 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %412 = llvm.insertvalue %403, %411[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %410, %412[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.insertvalue %414, %413[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %391, %415[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %392, %416[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %393, %417[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %394, %418[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %392, %419[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %393, %420[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %394, %421[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %395, %422[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%424 : i64)
  ^bb37(%427: i64):  // 2 preds: ^bb36, ^bb47
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%429 : i64)
  ^bb39(%432: i64):  // 2 preds: ^bb38, ^bb46
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%434 : i64)
  ^bb41(%437: i64):  // 2 preds: ^bb40, ^bb45
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%439 : i64)
  ^bb43(%442: i64):  // 2 preds: ^bb42, ^bb44
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %444 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mul %13, %445  : i64
    %447 = llvm.add %446, %432  : i64
    %448 = llvm.add %447, %13  : i64
    %449 = llvm.add %448, %13  : i64
    %450 = llvm.getelementptr %444[%449] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %451 = llvm.load %450 : !llvm.ptr<i32>
    %452 = llvm.extractvalue %423[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mul %427, %453  : i64
    %455 = llvm.add %454, %432  : i64
    %456 = llvm.add %455, %437  : i64
    %457 = llvm.add %456, %442  : i64
    %458 = llvm.getelementptr %452[%457] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %451, %458 : !llvm.ptr<i32>
    %459 = llvm.add %442, %441  : i64
    llvm.br ^bb43(%459 : i64)
  ^bb45:  // pred: ^bb43
    %460 = llvm.add %437, %436  : i64
    llvm.br ^bb41(%460 : i64)
  ^bb46:  // pred: ^bb41
    %461 = llvm.add %432, %431  : i64
    llvm.br ^bb39(%461 : i64)
  ^bb47:  // pred: ^bb39
    %462 = llvm.add %427, %426  : i64
    llvm.br ^bb37(%462 : i64)
  ^bb48:  // pred: ^bb37
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(2 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(2 : index) : i64
    %469 = llvm.mlir.null : !llvm.ptr<i32>
    %470 = llvm.getelementptr %469[%468] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %471 = llvm.ptrtoint %470 : !llvm.ptr<i32> to i64
    %472 = llvm.mlir.constant(16 : index) : i64
    %473 = llvm.add %471, %472  : i64
    %474 = llvm.call @malloc(%473) : (i64) -> !llvm.ptr<i8>
    %475 = llvm.bitcast %474 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i32> to i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.sub %472, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.urem %479, %472  : i64
    %481 = llvm.sub %479, %480  : i64
    %482 = llvm.inttoptr %481 : i64 to !llvm.ptr<i32>
    %483 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %484 = llvm.insertvalue %475, %483[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %482, %484[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.insertvalue %486, %485[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %463, %487[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %464, %488[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %465, %489[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %466, %490[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %464, %491[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %465, %492[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %466, %493[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %467, %494[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%496 : i64)
  ^bb49(%499: i64):  // 2 preds: ^bb48, ^bb59
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(2 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%501 : i64)
  ^bb51(%504: i64):  // 2 preds: ^bb50, ^bb58
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%506 : i64)
  ^bb53(%509: i64):  // 2 preds: ^bb52, ^bb57
    %510 = llvm.icmp "slt" %509, %507 : i64
    llvm.cond_br %510, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%511 : i64)
  ^bb55(%514: i64):  // 2 preds: ^bb54, ^bb56
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %516 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mul %499, %517  : i64
    %519 = llvm.add %518, %504  : i64
    %520 = llvm.add %519, %509  : i64
    %521 = llvm.add %520, %514  : i64
    %522 = llvm.getelementptr %516[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %523 = llvm.load %522 : !llvm.ptr<i32>
    %524 = llvm.extractvalue %495[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mul %499, %525  : i64
    %527 = llvm.add %526, %504  : i64
    %528 = llvm.add %527, %509  : i64
    %529 = llvm.add %528, %514  : i64
    %530 = llvm.getelementptr %524[%529] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %523, %530 : !llvm.ptr<i32>
    %531 = llvm.add %514, %513  : i64
    llvm.br ^bb55(%531 : i64)
  ^bb57:  // pred: ^bb55
    %532 = llvm.add %509, %508  : i64
    llvm.br ^bb53(%532 : i64)
  ^bb58:  // pred: ^bb53
    %533 = llvm.add %504, %503  : i64
    llvm.br ^bb51(%533 : i64)
  ^bb59:  // pred: ^bb51
    %534 = llvm.add %499, %498  : i64
    llvm.br ^bb49(%534 : i64)
  ^bb60:  // pred: ^bb49
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.mlir.constant(4 : index) : i64
    %541 = llvm.mlir.constant(8 : index) : i64
    %542 = llvm.mlir.constant(8 : index) : i64
    %543 = llvm.mlir.null : !llvm.ptr<i32>
    %544 = llvm.getelementptr %543[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %545 = llvm.ptrtoint %544 : !llvm.ptr<i32> to i64
    %546 = llvm.mlir.constant(16 : index) : i64
    %547 = llvm.add %545, %546  : i64
    %548 = llvm.call @malloc(%547) : (i64) -> !llvm.ptr<i8>
    %549 = llvm.bitcast %548 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %550 = llvm.ptrtoint %549 : !llvm.ptr<i32> to i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.sub %546, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.urem %553, %546  : i64
    %555 = llvm.sub %553, %554  : i64
    %556 = llvm.inttoptr %555 : i64 to !llvm.ptr<i32>
    %557 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %558 = llvm.insertvalue %549, %557[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.insertvalue %556, %558[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.insertvalue %560, %559[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.insertvalue %535, %561[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.insertvalue %536, %562[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.insertvalue %537, %563[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.insertvalue %538, %564[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.insertvalue %541, %565[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %540, %566[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.insertvalue %538, %567[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.insertvalue %539, %568[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%570 : i64)
  ^bb61(%573: i64):  // 2 preds: ^bb60, ^bb71
    %574 = llvm.icmp "slt" %573, %571 : i64
    llvm.cond_br %574, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.mlir.constant(2 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%575 : i64)
  ^bb63(%578: i64):  // 2 preds: ^bb62, ^bb70
    %579 = llvm.icmp "slt" %578, %576 : i64
    llvm.cond_br %579, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.mlir.constant(2 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%580 : i64)
  ^bb65(%583: i64):  // 2 preds: ^bb64, ^bb69
    %584 = llvm.icmp "slt" %583, %581 : i64
    llvm.cond_br %584, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %585 = llvm.mlir.constant(0 : index) : i64
    %586 = llvm.mlir.constant(2 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%585 : i64)
  ^bb67(%588: i64):  // 2 preds: ^bb66, ^bb68
    %589 = llvm.icmp "slt" %588, %586 : i64
    llvm.cond_br %589, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %590 = llvm.extractvalue %495[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %573, %591  : i64
    %593 = llvm.add %592, %578  : i64
    %594 = llvm.add %593, %13  : i64
    %595 = llvm.add %594, %13  : i64
    %596 = llvm.getelementptr %590[%595] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %597 = llvm.load %596 : !llvm.ptr<i32>
    %598 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.mlir.constant(8 : index) : i64
    %600 = llvm.mul %573, %599  : i64
    %601 = llvm.mlir.constant(4 : index) : i64
    %602 = llvm.mul %578, %601  : i64
    %603 = llvm.add %600, %602  : i64
    %604 = llvm.mlir.constant(2 : index) : i64
    %605 = llvm.mul %583, %604  : i64
    %606 = llvm.add %603, %605  : i64
    %607 = llvm.add %606, %588  : i64
    %608 = llvm.getelementptr %598[%607] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %609 = llvm.load %608 : !llvm.ptr<i32>
    %610 = llvm.icmp "sgt" %597, %609 : i32
    %611 = llvm.select %610, %597, %609 : i1, i32
    %612 = llvm.extractvalue %569[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.mlir.constant(8 : index) : i64
    %614 = llvm.mul %573, %613  : i64
    %615 = llvm.mlir.constant(4 : index) : i64
    %616 = llvm.mul %578, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.mlir.constant(2 : index) : i64
    %619 = llvm.mul %583, %618  : i64
    %620 = llvm.add %617, %619  : i64
    %621 = llvm.add %620, %588  : i64
    %622 = llvm.getelementptr %612[%621] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %611, %622 : !llvm.ptr<i32>
    %623 = llvm.add %588, %587  : i64
    llvm.br ^bb67(%623 : i64)
  ^bb69:  // pred: ^bb67
    %624 = llvm.add %583, %582  : i64
    llvm.br ^bb65(%624 : i64)
  ^bb70:  // pred: ^bb65
    %625 = llvm.add %578, %577  : i64
    llvm.br ^bb63(%625 : i64)
  ^bb71:  // pred: ^bb63
    %626 = llvm.add %573, %572  : i64
    llvm.br ^bb61(%626 : i64)
  ^bb72:  // pred: ^bb61
    %627 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %628 = llvm.insertvalue %196, %627[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %629 = llvm.insertvalue %423, %628[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %630 = llvm.insertvalue %569, %629[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %630 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

