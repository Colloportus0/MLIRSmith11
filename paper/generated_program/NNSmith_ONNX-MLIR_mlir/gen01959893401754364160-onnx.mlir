module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_1(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<[[[[6, 3]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %44 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i32>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %51 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %69 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %70 = llvm.bitcast %69 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %71 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %72 = llvm.insertvalue %70, %71[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(4 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(4 : index) : i64
    %87 = llvm.mlir.constant(4 : index) : i64
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
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%120 : i64)
  ^bb3(%123: i64):  // 2 preds: ^bb2, ^bb10
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
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
    %135 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %118, %136  : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %123, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mul %128, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.add %143, %133  : i64
    %145 = llvm.getelementptr %135[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(4 : index) : i64
    %149 = llvm.mul %118, %148  : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mul %123, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mul %128, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.add %155, %133  : i64
    %157 = llvm.getelementptr %147[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %146, %157 : !llvm.ptr<i32>
    %158 = llvm.add %133, %132  : i64
    llvm.br ^bb7(%158 : i64)
  ^bb9:  // pred: ^bb7
    %159 = llvm.add %128, %127  : i64
    llvm.br ^bb5(%159 : i64)
  ^bb10:  // pred: ^bb5
    %160 = llvm.add %123, %122  : i64
    llvm.br ^bb3(%160 : i64)
  ^bb11:  // pred: ^bb3
    %161 = llvm.add %118, %117  : i64
    llvm.br ^bb1(%161 : i64)
  ^bb12:  // pred: ^bb1
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%162 : i64)
  ^bb13(%165: i64):  // 2 preds: ^bb12, ^bb23
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%167 : i64)
  ^bb15(%170: i64):  // 2 preds: ^bb14, ^bb22
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%172 : i64)
  ^bb17(%175: i64):  // 2 preds: ^bb16, ^bb21
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%177 : i64)
  ^bb19(%180: i64):  // 2 preds: ^bb18, ^bb20
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.add %170, %182  : i64
    %184 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %165, %185  : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mul %170, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mul %175, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.add %192, %180  : i64
    %194 = llvm.getelementptr %184[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.load %194 : !llvm.ptr<i32>
    %196 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mul %165, %197  : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %183, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mul %175, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %180  : i64
    %206 = llvm.getelementptr %196[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %195, %206 : !llvm.ptr<i32>
    %207 = llvm.add %180, %179  : i64
    llvm.br ^bb19(%207 : i64)
  ^bb21:  // pred: ^bb19
    %208 = llvm.add %175, %174  : i64
    llvm.br ^bb17(%208 : i64)
  ^bb22:  // pred: ^bb17
    %209 = llvm.add %170, %169  : i64
    llvm.br ^bb15(%209 : i64)
  ^bb23:  // pred: ^bb15
    %210 = llvm.add %165, %164  : i64
    llvm.br ^bb13(%210 : i64)
  ^bb24:  // pred: ^bb13
    %211 = llvm.mlir.constant(4 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.null : !llvm.ptr<i64>
    %214 = llvm.getelementptr %213[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i64> to i64
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.add %215, %216  : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i64> to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %216, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %216  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr<i64>
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %211, %231[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %212, %232[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%234 : i64)
  ^bb25(%237: i64):  // 2 preds: ^bb24, ^bb26
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %239 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.getelementptr %239[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %240 : !llvm.ptr<i64>
    %241 = llvm.add %237, %236  : i64
    llvm.br ^bb25(%241 : i64)
  ^bb27:  // pred: ^bb25
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.null : !llvm.ptr<i64>
    %245 = llvm.getelementptr %244[%242] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i64> to i64
    %247 = llvm.mlir.constant(16 : index) : i64
    %248 = llvm.add %246, %247  : i64
    %249 = llvm.call @malloc(%248) : (i64) -> !llvm.ptr<i8>
    %250 = llvm.bitcast %249 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i64> to i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.sub %247, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.urem %254, %247  : i64
    %256 = llvm.sub %254, %255  : i64
    %257 = llvm.inttoptr %256 : i64 to !llvm.ptr<i64>
    %258 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %259 = llvm.insertvalue %250, %258[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %257, %259[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.insertvalue %261, %260[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %242, %262[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.insertvalue %243, %263[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%265 : i64)
  ^bb28(%268: i64):  // 2 preds: ^bb27, ^bb29
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %270 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %272 = llvm.load %271 : !llvm.ptr<i64>
    %273 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %274 = llvm.load %273 : !llvm.ptr<i64>
    %275 = llvm.mul %272, %274  : i64
    %276 = llvm.extractvalue %264[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %275, %277 : !llvm.ptr<i64>
    %278 = llvm.add %268, %267  : i64
    llvm.br ^bb28(%278 : i64)
  ^bb30:  // pred: ^bb28
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.null : !llvm.ptr<i1>
    %282 = llvm.getelementptr %281[%279] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i1> to i64
    %284 = llvm.mlir.constant(16 : index) : i64
    %285 = llvm.add %283, %284  : i64
    %286 = llvm.call @malloc(%285) : (i64) -> !llvm.ptr<i8>
    %287 = llvm.bitcast %286 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i1> to i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.sub %284, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.urem %291, %284  : i64
    %293 = llvm.sub %291, %292  : i64
    %294 = llvm.inttoptr %293 : i64 to !llvm.ptr<i1>
    %295 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %296 = llvm.insertvalue %287, %295[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %294, %296[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.insertvalue %298, %297[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %279, %299[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.insertvalue %280, %300[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%302 : i64)
  ^bb31(%305: i64):  // 2 preds: ^bb30, ^bb32
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %307 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.getelementptr %307[%305] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %309 = llvm.load %308 : !llvm.ptr<i64>
    %310 = llvm.extractvalue %264[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%305] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %312 = llvm.load %311 : !llvm.ptr<i64>
    %313 = llvm.icmp "eq" %309, %312 : i64
    %314 = llvm.extractvalue %301[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.getelementptr %314[%305] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %313, %315 : !llvm.ptr<i1>
    %316 = llvm.add %305, %304  : i64
    llvm.br ^bb31(%316 : i64)
  ^bb33:  // pred: ^bb31
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.null : !llvm.ptr<i64>
    %320 = llvm.getelementptr %319[%317] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i64> to i64
    %322 = llvm.mlir.constant(16 : index) : i64
    %323 = llvm.add %321, %322  : i64
    %324 = llvm.call @malloc(%323) : (i64) -> !llvm.ptr<i8>
    %325 = llvm.bitcast %324 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i64> to i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.sub %322, %327  : i64
    %329 = llvm.add %326, %328  : i64
    %330 = llvm.urem %329, %322  : i64
    %331 = llvm.sub %329, %330  : i64
    %332 = llvm.inttoptr %331 : i64 to !llvm.ptr<i64>
    %333 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %334 = llvm.insertvalue %325, %333[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.insertvalue %332, %334[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.insertvalue %336, %335[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.insertvalue %317, %337[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.insertvalue %318, %338[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%340 : i64)
  ^bb34(%343: i64):  // 2 preds: ^bb33, ^bb35
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %345 = llvm.extractvalue %301[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.getelementptr %345[%343] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %347 = llvm.load %346 : !llvm.ptr<i1>
    %348 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.getelementptr %348[%343] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %350 = llvm.load %349 : !llvm.ptr<i64>
    %351 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.getelementptr %351[%343] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %353 = llvm.load %352 : !llvm.ptr<i64>
    %354 = llvm.select %347, %350, %353 : i1, i64
    %355 = llvm.extractvalue %339[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.getelementptr %355[%343] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %354, %356 : !llvm.ptr<i64>
    %357 = llvm.add %343, %342  : i64
    llvm.br ^bb34(%357 : i64)
  ^bb36:  // pred: ^bb34
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mlir.constant(4 : index) : i64
    %366 = llvm.mlir.null : !llvm.ptr<i32>
    %367 = llvm.getelementptr %366[%365] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %368 = llvm.ptrtoint %367 : !llvm.ptr<i32> to i64
    %369 = llvm.mlir.constant(16 : index) : i64
    %370 = llvm.add %368, %369  : i64
    %371 = llvm.call @malloc(%370) : (i64) -> !llvm.ptr<i8>
    %372 = llvm.bitcast %371 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %373 = llvm.ptrtoint %372 : !llvm.ptr<i32> to i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.sub %369, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.urem %376, %369  : i64
    %378 = llvm.sub %376, %377  : i64
    %379 = llvm.inttoptr %378 : i64 to !llvm.ptr<i32>
    %380 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %381 = llvm.insertvalue %372, %380[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %379, %381[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.insertvalue %383, %382[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %358, %384[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %359, %385[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %360, %386[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %361, %387[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %364, %388[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %363, %389[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %361, %390[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %362, %391[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%393 : i64)
  ^bb37(%396: i64):  // 2 preds: ^bb36, ^bb47
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%398 : i64)
  ^bb39(%401: i64):  // 2 preds: ^bb38, ^bb46
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%403 : i64)
  ^bb41(%406: i64):  // 2 preds: ^bb40, ^bb45
    %407 = llvm.icmp "slt" %406, %404 : i64
    llvm.cond_br %407, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%408 : i64)
  ^bb43(%411: i64):  // 2 preds: ^bb42, ^bb44
    %412 = llvm.icmp "slt" %411, %409 : i64
    llvm.cond_br %412, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %413 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.mlir.constant(4 : index) : i64
    %415 = llvm.mul %13, %414  : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mul %401, %416  : i64
    %418 = llvm.add %415, %417  : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mul %13, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.add %421, %411  : i64
    %423 = llvm.getelementptr %413[%422] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.load %423 : !llvm.ptr<i32>
    %425 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(4 : index) : i64
    %427 = llvm.mul %396, %426  : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mul %401, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mul %406, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.add %433, %411  : i64
    %435 = llvm.getelementptr %425[%434] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %424, %435 : !llvm.ptr<i32>
    %436 = llvm.add %411, %410  : i64
    llvm.br ^bb43(%436 : i64)
  ^bb45:  // pred: ^bb43
    %437 = llvm.add %406, %405  : i64
    llvm.br ^bb41(%437 : i64)
  ^bb46:  // pred: ^bb41
    %438 = llvm.add %401, %400  : i64
    llvm.br ^bb39(%438 : i64)
  ^bb47:  // pred: ^bb39
    %439 = llvm.add %396, %395  : i64
    llvm.br ^bb37(%439 : i64)
  ^bb48:  // pred: ^bb37
    %440 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %441 = llvm.extractvalue %114[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %441, %440[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %442, %443[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.insertvalue %445, %444[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.insertvalue %447, %446[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.insertvalue %449, %448[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.insertvalue %451, %450[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.insertvalue %453, %452[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.insertvalue %455, %454[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.insertvalue %457, %456[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.insertvalue %459, %458[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.insertvalue %461, %460[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(2 : index) : i64
    %469 = llvm.mlir.constant(4 : index) : i64
    %470 = llvm.mlir.null : !llvm.ptr<i32>
    %471 = llvm.getelementptr %470[%469] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %472 = llvm.ptrtoint %471 : !llvm.ptr<i32> to i64
    %473 = llvm.mlir.constant(16 : index) : i64
    %474 = llvm.add %472, %473  : i64
    %475 = llvm.call @malloc(%474) : (i64) -> !llvm.ptr<i8>
    %476 = llvm.bitcast %475 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %477 = llvm.ptrtoint %476 : !llvm.ptr<i32> to i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.sub %473, %478  : i64
    %480 = llvm.add %477, %479  : i64
    %481 = llvm.urem %480, %473  : i64
    %482 = llvm.sub %480, %481  : i64
    %483 = llvm.inttoptr %482 : i64 to !llvm.ptr<i32>
    %484 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %485 = llvm.insertvalue %476, %484[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %483, %485[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.insertvalue %487, %486[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %463, %488[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %464, %489[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %465, %490[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %466, %491[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %468, %492[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %465, %493[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %466, %494[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %467, %495[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%497 : i64)
  ^bb49(%500: i64):  // 2 preds: ^bb48, ^bb59
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%502 : i64)
  ^bb51(%505: i64):  // 2 preds: ^bb50, ^bb58
    %506 = llvm.icmp "slt" %505, %503 : i64
    llvm.cond_br %506, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%507 : i64)
  ^bb53(%510: i64):  // 2 preds: ^bb52, ^bb57
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%512 : i64)
  ^bb55(%515: i64):  // 2 preds: ^bb54, ^bb56
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %517 = llvm.extractvalue %462[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mul %500, %518  : i64
    %520 = llvm.mlir.constant(2 : index) : i64
    %521 = llvm.mul %505, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.add %522, %510  : i64
    %524 = llvm.add %523, %515  : i64
    %525 = llvm.getelementptr %517[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %526 = llvm.load %525 : !llvm.ptr<i32>
    %527 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %528 = llvm.load %527 : !llvm.ptr<i32>
    %529 = llvm.icmp "slt" %526, %528 : i32
    %530 = llvm.select %529, %528, %526 : i1, i32
    %531 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %532 = llvm.load %531 : !llvm.ptr<i32>
    %533 = llvm.icmp "slt" %530, %532 : i32
    %534 = llvm.select %533, %530, %532 : i1, i32
    %535 = llvm.extractvalue %496[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.mul %500, %536  : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mul %505, %538  : i64
    %540 = llvm.add %537, %539  : i64
    %541 = llvm.add %540, %510  : i64
    %542 = llvm.add %541, %515  : i64
    %543 = llvm.getelementptr %535[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %534, %543 : !llvm.ptr<i32>
    %544 = llvm.add %515, %514  : i64
    llvm.br ^bb55(%544 : i64)
  ^bb57:  // pred: ^bb55
    %545 = llvm.add %510, %509  : i64
    llvm.br ^bb53(%545 : i64)
  ^bb58:  // pred: ^bb53
    %546 = llvm.add %505, %504  : i64
    llvm.br ^bb51(%546 : i64)
  ^bb59:  // pred: ^bb51
    %547 = llvm.add %500, %499  : i64
    llvm.br ^bb49(%547 : i64)
  ^bb60:  // pred: ^bb49
    %548 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %549 = llvm.insertvalue %392, %548[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %550 = llvm.insertvalue %496, %549[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %550 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

