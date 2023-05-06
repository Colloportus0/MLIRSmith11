module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[[[6]]], [[[5]]]]> : tensor<2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v7_0", "v4_0"]} {
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
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.mlir.constant(1 : i64) : i64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %47 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.null : !llvm.ptr<i32>
    %87 = llvm.getelementptr %86[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i32> to i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.add %88, %89  : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %93 = llvm.ptrtoint %92 : !llvm.ptr<i32> to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %89, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %89  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr<i32>
    %100 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %81, %104[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %82, %105[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %83, %106[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %82, %108[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%113 : i64)
  ^bb1(%116: i64):  // 2 preds: ^bb0, ^bb11
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%118 : i64)
  ^bb3(%121: i64):  // 2 preds: ^bb2, ^bb10
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%123 : i64)
  ^bb5(%126: i64):  // 2 preds: ^bb4, ^bb9
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%128 : i64)
  ^bb7(%131: i64):  // 2 preds: ^bb6, ^bb8
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %133 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.add %116, %121  : i64
    %135 = llvm.add %134, %126  : i64
    %136 = llvm.add %135, %131  : i64
    %137 = llvm.getelementptr %133[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.load %137 : !llvm.ptr<i32>
    %139 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.add %26, %121  : i64
    %141 = llvm.add %140, %126  : i64
    %142 = llvm.add %141, %131  : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.sub %138, %144  : i32
    %146 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.add %116, %121  : i64
    %148 = llvm.add %147, %126  : i64
    %149 = llvm.add %148, %131  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %150 : !llvm.ptr<i32>
    %151 = llvm.add %131, %130  : i64
    llvm.br ^bb7(%151 : i64)
  ^bb9:  // pred: ^bb7
    %152 = llvm.add %126, %125  : i64
    llvm.br ^bb5(%152 : i64)
  ^bb10:  // pred: ^bb5
    %153 = llvm.add %121, %120  : i64
    llvm.br ^bb3(%153 : i64)
  ^bb11:  // pred: ^bb3
    %154 = llvm.add %116, %115  : i64
    llvm.br ^bb1(%154 : i64)
  ^bb12:  // pred: ^bb1
    %155 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.extractvalue %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %156, %155[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %157, %158[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.insertvalue %160, %159[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.insertvalue %162, %161[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.insertvalue %164, %163[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.mlir.constant(4 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.null : !llvm.ptr<i64>
    %169 = llvm.getelementptr %168[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %170 = llvm.ptrtoint %169 : !llvm.ptr<i64> to i64
    %171 = llvm.mlir.constant(16 : index) : i64
    %172 = llvm.add %170, %171  : i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr<i8>
    %174 = llvm.bitcast %173 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %175 = llvm.ptrtoint %174 : !llvm.ptr<i64> to i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.sub %171, %176  : i64
    %178 = llvm.add %175, %177  : i64
    %179 = llvm.urem %178, %171  : i64
    %180 = llvm.sub %178, %179  : i64
    %181 = llvm.inttoptr %180 : i64 to !llvm.ptr<i64>
    %182 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %183 = llvm.insertvalue %174, %182[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %181, %183[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.insertvalue %185, %184[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.insertvalue %166, %186[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.insertvalue %167, %187[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%189 : i64)
  ^bb13(%192: i64):  // 2 preds: ^bb12, ^bb14
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %194 = llvm.extractvalue %188[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.getelementptr %194[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %195 : !llvm.ptr<i64>
    %196 = llvm.add %192, %191  : i64
    llvm.br ^bb13(%196 : i64)
  ^bb15:  // pred: ^bb13
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.null : !llvm.ptr<i64>
    %200 = llvm.getelementptr %199[%197] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i64> to i64
    %202 = llvm.mlir.constant(16 : index) : i64
    %203 = llvm.add %201, %202  : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i64> to i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.sub %202, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.urem %209, %202  : i64
    %211 = llvm.sub %209, %210  : i64
    %212 = llvm.inttoptr %211 : i64 to !llvm.ptr<i64>
    %213 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %214 = llvm.insertvalue %205, %213[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %197, %217[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %198, %218[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%220 : i64)
  ^bb16(%223: i64):  // 2 preds: ^bb15, ^bb17
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %225 = llvm.extractvalue %188[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.getelementptr %225[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %227 = llvm.load %226 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %229 = llvm.load %228 : !llvm.ptr<i64>
    %230 = llvm.mul %227, %229  : i64
    %231 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.getelementptr %231[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %230, %232 : !llvm.ptr<i64>
    %233 = llvm.add %223, %222  : i64
    llvm.br ^bb16(%233 : i64)
  ^bb18:  // pred: ^bb16
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.null : !llvm.ptr<i1>
    %237 = llvm.getelementptr %236[%234] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i1> to i64
    %239 = llvm.mlir.constant(16 : index) : i64
    %240 = llvm.add %238, %239  : i64
    %241 = llvm.call @malloc(%240) : (i64) -> !llvm.ptr<i8>
    %242 = llvm.bitcast %241 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %243 = llvm.ptrtoint %242 : !llvm.ptr<i1> to i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.sub %239, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.urem %246, %239  : i64
    %248 = llvm.sub %246, %247  : i64
    %249 = llvm.inttoptr %248 : i64 to !llvm.ptr<i1>
    %250 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %251 = llvm.insertvalue %242, %250[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %249, %251[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.insertvalue %253, %252[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %234, %254[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.insertvalue %235, %255[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(4 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%257 : i64)
  ^bb19(%260: i64):  // 2 preds: ^bb18, ^bb20
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %262 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%260] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %264 = llvm.load %263 : !llvm.ptr<i64>
    %265 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%260] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %267 = llvm.load %266 : !llvm.ptr<i64>
    %268 = llvm.icmp "eq" %264, %267 : i64
    %269 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%260] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %268, %270 : !llvm.ptr<i1>
    %271 = llvm.add %260, %259  : i64
    llvm.br ^bb19(%271 : i64)
  ^bb21:  // pred: ^bb19
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.null : !llvm.ptr<i64>
    %275 = llvm.getelementptr %274[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %276 = llvm.ptrtoint %275 : !llvm.ptr<i64> to i64
    %277 = llvm.mlir.constant(16 : index) : i64
    %278 = llvm.add %276, %277  : i64
    %279 = llvm.call @malloc(%278) : (i64) -> !llvm.ptr<i8>
    %280 = llvm.bitcast %279 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i64> to i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.sub %277, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.urem %284, %277  : i64
    %286 = llvm.sub %284, %285  : i64
    %287 = llvm.inttoptr %286 : i64 to !llvm.ptr<i64>
    %288 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %289 = llvm.insertvalue %280, %288[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %287, %289[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.insertvalue %291, %290[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %272, %292[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.insertvalue %273, %293[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%295 : i64)
  ^bb22(%298: i64):  // 2 preds: ^bb21, ^bb23
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %300 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.getelementptr %300[%298] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %302 = llvm.load %301 : !llvm.ptr<i1>
    %303 = llvm.extractvalue %188[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.getelementptr %303[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %305 = llvm.load %304 : !llvm.ptr<i64>
    %306 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.getelementptr %306[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %308 = llvm.load %307 : !llvm.ptr<i64>
    %309 = llvm.select %302, %305, %308 : i1, i64
    %310 = llvm.extractvalue %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %309, %311 : !llvm.ptr<i64>
    %312 = llvm.add %298, %297  : i64
    llvm.br ^bb22(%312 : i64)
  ^bb24:  // pred: ^bb22
    %313 = llvm.extractvalue %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%26] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.load %314 : !llvm.ptr<i64>
    %316 = llvm.extractvalue %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%28] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %318 = llvm.load %317 : !llvm.ptr<i64>
    %319 = llvm.extractvalue %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.getelementptr %319[%27] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %321 = llvm.load %320 : !llvm.ptr<i64>
    %322 = llvm.extractvalue %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.getelementptr %322[%24] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %324 = llvm.load %323 : !llvm.ptr<i64>
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mul %324, %321  : i64
    %327 = llvm.mul %326, %318  : i64
    %328 = llvm.mul %327, %315  : i64
    %329 = llvm.mlir.null : !llvm.ptr<i32>
    %330 = llvm.getelementptr %329[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i32> to i64
    %332 = llvm.mlir.constant(16 : index) : i64
    %333 = llvm.add %331, %332  : i64
    %334 = llvm.call @malloc(%333) : (i64) -> !llvm.ptr<i8>
    %335 = llvm.bitcast %334 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %336 = llvm.ptrtoint %335 : !llvm.ptr<i32> to i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.sub %332, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.urem %339, %332  : i64
    %341 = llvm.sub %339, %340  : i64
    %342 = llvm.inttoptr %341 : i64 to !llvm.ptr<i32>
    %343 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %344 = llvm.insertvalue %335, %343[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %342, %344[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.insertvalue %346, %345[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %315, %347[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %318, %348[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %321, %349[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %324, %350[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %327, %351[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %326, %352[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %324, %353[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %325, %354[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%356 : i64)
  ^bb25(%358: i64):  // 2 preds: ^bb24, ^bb35
    %359 = llvm.icmp "slt" %358, %315 : i64
    llvm.cond_br %359, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%360 : i64)
  ^bb27(%362: i64):  // 2 preds: ^bb26, ^bb34
    %363 = llvm.icmp "slt" %362, %318 : i64
    llvm.cond_br %363, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%364 : i64)
  ^bb29(%366: i64):  // 2 preds: ^bb28, ^bb33
    %367 = llvm.icmp "slt" %366, %321 : i64
    llvm.cond_br %367, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%368 : i64)
  ^bb31(%370: i64):  // 2 preds: ^bb30, ^bb32
    %371 = llvm.icmp "slt" %370, %324 : i64
    llvm.cond_br %371, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %372 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.add %26, %26  : i64
    %374 = llvm.add %373, %26  : i64
    %375 = llvm.add %374, %26  : i64
    %376 = llvm.getelementptr %372[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %377 = llvm.load %376 : !llvm.ptr<i32>
    %378 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.extractvalue %355[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mul %358, %379  : i64
    %381 = llvm.extractvalue %355[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.mul %362, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.extractvalue %355[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.mul %366, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.add %386, %370  : i64
    %388 = llvm.getelementptr %378[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %377, %388 : !llvm.ptr<i32>
    %389 = llvm.add %370, %369  : i64
    llvm.br ^bb31(%389 : i64)
  ^bb33:  // pred: ^bb31
    %390 = llvm.add %366, %365  : i64
    llvm.br ^bb29(%390 : i64)
  ^bb34:  // pred: ^bb29
    %391 = llvm.add %362, %361  : i64
    llvm.br ^bb27(%391 : i64)
  ^bb35:  // pred: ^bb27
    %392 = llvm.add %358, %357  : i64
    llvm.br ^bb25(%392 : i64)
  ^bb36:  // pred: ^bb25
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.mlir.null : !llvm.ptr<i1>
    %399 = llvm.getelementptr %398[%393] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %400 = llvm.ptrtoint %399 : !llvm.ptr<i1> to i64
    %401 = llvm.mlir.constant(16 : index) : i64
    %402 = llvm.add %400, %401  : i64
    %403 = llvm.call @malloc(%402) : (i64) -> !llvm.ptr<i8>
    %404 = llvm.bitcast %403 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %405 = llvm.ptrtoint %404 : !llvm.ptr<i1> to i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.sub %401, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.urem %408, %401  : i64
    %410 = llvm.sub %408, %409  : i64
    %411 = llvm.inttoptr %410 : i64 to !llvm.ptr<i1>
    %412 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %413 = llvm.insertvalue %404, %412[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %411, %413[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.insertvalue %415, %414[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %393, %416[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %394, %417[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %395, %418[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %396, %419[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %396, %422[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %397, %423[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%425 : i64)
  ^bb37(%428: i64):  // 2 preds: ^bb36, ^bb47
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%430 : i64)
  ^bb39(%433: i64):  // 2 preds: ^bb38, ^bb46
    %434 = llvm.icmp "slt" %433, %431 : i64
    llvm.cond_br %434, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %435 = llvm.mlir.constant(0 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%435 : i64)
  ^bb41(%438: i64):  // 2 preds: ^bb40, ^bb45
    %439 = llvm.icmp "slt" %438, %436 : i64
    llvm.cond_br %439, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%440 : i64)
  ^bb43(%443: i64):  // 2 preds: ^bb42, ^bb44
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %445 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.extractvalue %355[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mul %428, %446  : i64
    %448 = llvm.extractvalue %355[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mul %433, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.extractvalue %355[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.mul %438, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.add %453, %443  : i64
    %455 = llvm.getelementptr %445[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.load %455 : !llvm.ptr<i32>
    %457 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.add %26, %26  : i64
    %459 = llvm.add %458, %26  : i64
    %460 = llvm.add %459, %26  : i64
    %461 = llvm.getelementptr %457[%460] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %462 = llvm.load %461 : !llvm.ptr<i32>
    %463 = llvm.icmp "sgt" %456, %462 : i32
    %464 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.add %428, %433  : i64
    %466 = llvm.add %465, %438  : i64
    %467 = llvm.add %466, %443  : i64
    %468 = llvm.getelementptr %464[%467] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %463, %468 : !llvm.ptr<i1>
    %469 = llvm.add %443, %442  : i64
    llvm.br ^bb43(%469 : i64)
  ^bb45:  // pred: ^bb43
    %470 = llvm.add %438, %437  : i64
    llvm.br ^bb41(%470 : i64)
  ^bb46:  // pred: ^bb41
    %471 = llvm.add %433, %432  : i64
    llvm.br ^bb39(%471 : i64)
  ^bb47:  // pred: ^bb39
    %472 = llvm.add %428, %427  : i64
    llvm.br ^bb37(%472 : i64)
  ^bb48:  // pred: ^bb37
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.null : !llvm.ptr<i32>
    %479 = llvm.getelementptr %478[%473] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i32> to i64
    %481 = llvm.mlir.constant(16 : index) : i64
    %482 = llvm.add %480, %481  : i64
    %483 = llvm.call @malloc(%482) : (i64) -> !llvm.ptr<i8>
    %484 = llvm.bitcast %483 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i32> to i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.sub %481, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.urem %488, %481  : i64
    %490 = llvm.sub %488, %489  : i64
    %491 = llvm.inttoptr %490 : i64 to !llvm.ptr<i32>
    %492 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %493 = llvm.insertvalue %484, %492[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %491, %493[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.insertvalue %495, %494[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %473, %496[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %474, %497[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %475, %498[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %476, %499[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %474, %500[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %475, %501[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %476, %502[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %477, %503[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%505 : i64)
  ^bb49(%508: i64):  // 2 preds: ^bb48, ^bb59
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%510 : i64)
  ^bb51(%513: i64):  // 2 preds: ^bb50, ^bb58
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%515 : i64)
  ^bb53(%518: i64):  // 2 preds: ^bb52, ^bb57
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%520 : i64)
  ^bb55(%523: i64):  // 2 preds: ^bb54, ^bb56
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %525 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.add %508, %513  : i64
    %527 = llvm.add %526, %518  : i64
    %528 = llvm.add %527, %523  : i64
    %529 = llvm.getelementptr %525[%528] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %530 = llvm.load %529 : !llvm.ptr<i32>
    %531 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.add %508, %513  : i64
    %533 = llvm.add %532, %518  : i64
    %534 = llvm.add %533, %523  : i64
    %535 = llvm.getelementptr %531[%534] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %530, %535 : !llvm.ptr<i32>
    %536 = llvm.add %523, %522  : i64
    llvm.br ^bb55(%536 : i64)
  ^bb57:  // pred: ^bb55
    %537 = llvm.add %518, %517  : i64
    llvm.br ^bb53(%537 : i64)
  ^bb58:  // pred: ^bb53
    %538 = llvm.add %513, %512  : i64
    llvm.br ^bb51(%538 : i64)
  ^bb59:  // pred: ^bb51
    %539 = llvm.add %508, %507  : i64
    llvm.br ^bb49(%539 : i64)
  ^bb60:  // pred: ^bb49
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.mlir.constant(2 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%540 : i64)
  ^bb61(%543: i64):  // 2 preds: ^bb60, ^bb71
    %544 = llvm.icmp "slt" %543, %541 : i64
    llvm.cond_br %544, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%545 : i64)
  ^bb63(%548: i64):  // 2 preds: ^bb62, ^bb70
    %549 = llvm.icmp "slt" %548, %546 : i64
    llvm.cond_br %549, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%550 : i64)
  ^bb65(%553: i64):  // 2 preds: ^bb64, ^bb69
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%555 : i64)
  ^bb67(%558: i64):  // 2 preds: ^bb66, ^bb68
    %559 = llvm.icmp "slt" %558, %556 : i64
    llvm.cond_br %559, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %560 = llvm.mlir.constant(1 : index) : i64
    %561 = llvm.add %543, %560  : i64
    %562 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.add %543, %548  : i64
    %564 = llvm.add %563, %553  : i64
    %565 = llvm.add %564, %558  : i64
    %566 = llvm.getelementptr %562[%565] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %567 = llvm.load %566 : !llvm.ptr<i32>
    %568 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.add %561, %548  : i64
    %570 = llvm.add %569, %553  : i64
    %571 = llvm.add %570, %558  : i64
    %572 = llvm.getelementptr %568[%571] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %567, %572 : !llvm.ptr<i32>
    %573 = llvm.add %558, %557  : i64
    llvm.br ^bb67(%573 : i64)
  ^bb69:  // pred: ^bb67
    %574 = llvm.add %553, %552  : i64
    llvm.br ^bb65(%574 : i64)
  ^bb70:  // pred: ^bb65
    %575 = llvm.add %548, %547  : i64
    llvm.br ^bb63(%575 : i64)
  ^bb71:  // pred: ^bb63
    %576 = llvm.add %543, %542  : i64
    llvm.br ^bb61(%576 : i64)
  ^bb72:  // pred: ^bb61
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%577 : i64)
  ^bb73(%580: i64):  // 2 preds: ^bb72, ^bb83
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%582 : i64)
  ^bb75(%585: i64):  // 2 preds: ^bb74, ^bb82
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%587 : i64)
  ^bb77(%590: i64):  // 2 preds: ^bb76, ^bb81
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%592 : i64)
  ^bb79(%595: i64):  // 2 preds: ^bb78, ^bb80
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %597 = llvm.mlir.constant(3 : index) : i64
    %598 = llvm.add %580, %597  : i64
    %599 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.add %580, %585  : i64
    %601 = llvm.add %600, %590  : i64
    %602 = llvm.add %601, %595  : i64
    %603 = llvm.getelementptr %599[%602] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %604 = llvm.load %603 : !llvm.ptr<i32>
    %605 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.add %598, %585  : i64
    %607 = llvm.add %606, %590  : i64
    %608 = llvm.add %607, %595  : i64
    %609 = llvm.getelementptr %605[%608] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %604, %609 : !llvm.ptr<i32>
    %610 = llvm.add %595, %594  : i64
    llvm.br ^bb79(%610 : i64)
  ^bb81:  // pred: ^bb79
    %611 = llvm.add %590, %589  : i64
    llvm.br ^bb77(%611 : i64)
  ^bb82:  // pred: ^bb77
    %612 = llvm.add %585, %584  : i64
    llvm.br ^bb75(%612 : i64)
  ^bb83:  // pred: ^bb75
    %613 = llvm.add %580, %579  : i64
    llvm.br ^bb73(%613 : i64)
  ^bb84:  // pred: ^bb73
    %614 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %615 = llvm.insertvalue %112, %614[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %616 = llvm.insertvalue %165, %615[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %617 = llvm.insertvalue %424, %616[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %618 = llvm.insertvalue %504, %617[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %618 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v7_0", "v4_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.extractvalue %85[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.mlir.constant(32 : i64) : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %94 = llvm.mlir.constant(4 : i64) : i64
    %95 = llvm.call @omTensorCreateUntyped(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.mlir.constant(1 : i64) : i64
    %97 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %99 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%95, %96, %98, %100) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %101 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%95, %101) : (!llvm.ptr<i8>, i64) -> ()
    %102 = llvm.call @omTensorGetShape(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.call @omTensorGetStrides(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.mlir.constant(0 : i64) : i64
    %105 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %102[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %103[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %102[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %103[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(2 : i64) : i64
    %115 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %102[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %103[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %102[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %103[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(0 : i64) : i64
    %125 = llvm.getelementptr %93[%124] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %95, %125 : !llvm.ptr<ptr<i8>>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.call @omTensorCreateUntyped(%126) : (i64) -> !llvm.ptr<i8>
    %128 = llvm.mlir.constant(0 : i64) : i64
    %129 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %131 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.bitcast %131 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%127, %128, %130, %132) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %133 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%127, %133) : (!llvm.ptr<i8>, i64) -> ()
    %134 = llvm.call @omTensorGetShape(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %135 = llvm.call @omTensorGetStrides(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %136 = llvm.mlir.constant(0 : i64) : i64
    %137 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.getelementptr %134[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.getelementptr %135[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(1 : i64) : i64
    %142 = llvm.getelementptr %93[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %127, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.mlir.constant(4 : i64) : i64
    %144 = llvm.call @omTensorCreateUntyped(%143) : (i64) -> !llvm.ptr<i8>
    %145 = llvm.mlir.constant(1 : i64) : i64
    %146 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.bitcast %146 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %148 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.bitcast %148 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%144, %145, %147, %149) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %150 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%144, %150) : (!llvm.ptr<i8>, i64) -> ()
    %151 = llvm.call @omTensorGetShape(%144) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %152 = llvm.call @omTensorGetStrides(%144) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %153 = llvm.mlir.constant(0 : i64) : i64
    %154 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %151[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %152[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(1 : i64) : i64
    %159 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %151[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %152[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(2 : i64) : i64
    %164 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.getelementptr %151[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %152[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.mlir.constant(3 : i64) : i64
    %169 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %151[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %152[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.mlir.constant(2 : i64) : i64
    %174 = llvm.getelementptr %93[%173] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %144, %174 : !llvm.ptr<ptr<i8>>
    %175 = llvm.mlir.constant(4 : i64) : i64
    %176 = llvm.call @omTensorCreateUntyped(%175) : (i64) -> !llvm.ptr<i8>
    %177 = llvm.mlir.constant(1 : i64) : i64
    %178 = llvm.extractvalue %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.bitcast %178 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %180 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.bitcast %180 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%176, %177, %179, %181) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %182 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%176, %182) : (!llvm.ptr<i8>, i64) -> ()
    %183 = llvm.call @omTensorGetShape(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %184 = llvm.call @omTensorGetStrides(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %185 = llvm.mlir.constant(0 : i64) : i64
    %186 = llvm.extractvalue %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %183[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %89[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %184[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(1 : i64) : i64
    %191 = llvm.extractvalue %89[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %183[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %89[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %184[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(2 : i64) : i64
    %196 = llvm.extractvalue %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %183[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %89[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.getelementptr %184[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %198, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(3 : i64) : i64
    %201 = llvm.extractvalue %89[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %183[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %89[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.getelementptr %184[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %203, %204 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(3 : i64) : i64
    %206 = llvm.getelementptr %93[%205] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %176, %206 : !llvm.ptr<ptr<i8>>
    %207 = llvm.call @omTensorListCreate(%93, %90, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %207 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<268 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<268 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

