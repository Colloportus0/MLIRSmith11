module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[[[[5]], [[3]]], [[[7]], [[6]]]]> : tensor<2x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[2, 2, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 2, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i1>, %arg12: !llvm.ptr<i1>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.constant(2147483647 : i32) : i32
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(4 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x i32>>>>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.mlir.constant(8 : index) : i64
    %86 = llvm.mlir.null : !llvm.ptr<i32>
    %87 = llvm.getelementptr %86[%85] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %105 = llvm.insertvalue %79, %104[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %80, %105[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %81, %106[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %82, %107[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %84, %108[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %81, %109[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %82, %110[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %83, %111[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%113 : i64)
  ^bb1(%116: i64):  // 2 preds: ^bb0, ^bb11
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%118 : i64)
  ^bb3(%121: i64):  // 2 preds: ^bb2, ^bb10
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
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
    %133 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %116, %134  : i64
    %136 = llvm.add %135, %121  : i64
    %137 = llvm.add %136, %26  : i64
    %138 = llvm.add %137, %131  : i64
    %139 = llvm.getelementptr %133[%138] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %140 = llvm.load %139 : !llvm.ptr<i1>
    %141 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %116, %142  : i64
    %144 = llvm.add %143, %121  : i64
    %145 = llvm.add %144, %26  : i64
    %146 = llvm.add %145, %131  : i64
    %147 = llvm.getelementptr %141[%146] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mul %26, %150  : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mul %121, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.add %154, %126  : i64
    %156 = llvm.add %155, %131  : i64
    %157 = llvm.getelementptr %149[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %158 = llvm.load %157 : !llvm.ptr<i32>
    %159 = llvm.select %140, %148, %158 : i1, i32
    %160 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(4 : index) : i64
    %162 = llvm.mul %116, %161  : i64
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mul %121, %163  : i64
    %165 = llvm.add %162, %164  : i64
    %166 = llvm.add %165, %126  : i64
    %167 = llvm.add %166, %131  : i64
    %168 = llvm.getelementptr %160[%167] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %159, %168 : !llvm.ptr<i32>
    %169 = llvm.add %131, %130  : i64
    llvm.br ^bb7(%169 : i64)
  ^bb9:  // pred: ^bb7
    %170 = llvm.add %126, %125  : i64
    llvm.br ^bb5(%170 : i64)
  ^bb10:  // pred: ^bb5
    %171 = llvm.add %121, %120  : i64
    llvm.br ^bb3(%171 : i64)
  ^bb11:  // pred: ^bb3
    %172 = llvm.add %116, %115  : i64
    llvm.br ^bb1(%172 : i64)
  ^bb12:  // pred: ^bb1
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(4 : index) : i64
    %178 = llvm.mlir.null : !llvm.ptr<i32>
    %179 = llvm.getelementptr %178[%177] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<i32> to i64
    %181 = llvm.mlir.constant(16 : index) : i64
    %182 = llvm.add %180, %181  : i64
    %183 = llvm.call @malloc(%182) : (i64) -> !llvm.ptr<i8>
    %184 = llvm.bitcast %183 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<i32> to i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.sub %181, %186  : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.urem %188, %181  : i64
    %190 = llvm.sub %188, %189  : i64
    %191 = llvm.inttoptr %190 : i64 to !llvm.ptr<i32>
    %192 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %193 = llvm.insertvalue %184, %192[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.insertvalue %191, %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.insertvalue %195, %194[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %197 = llvm.insertvalue %173, %196[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %198 = llvm.insertvalue %174, %197[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %199 = llvm.insertvalue %175, %198[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %200 = llvm.insertvalue %174, %199[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %201 = llvm.insertvalue %175, %200[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %202 = llvm.insertvalue %176, %201[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%203 : i64)
  ^bb13(%206: i64):  // 2 preds: ^bb12, ^bb20
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%208 : i64)
  ^bb15(%211: i64):  // 2 preds: ^bb14, ^bb19
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%213 : i64)
  ^bb17(%216: i64):  // 2 preds: ^bb16, ^bb18
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %218 = llvm.extractvalue %202[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %206, %219  : i64
    %221 = llvm.add %220, %211  : i64
    %222 = llvm.add %221, %216  : i64
    %223 = llvm.getelementptr %218[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %25, %223 : !llvm.ptr<i32>
    %224 = llvm.add %216, %215  : i64
    llvm.br ^bb17(%224 : i64)
  ^bb19:  // pred: ^bb17
    %225 = llvm.add %211, %210  : i64
    llvm.br ^bb15(%225 : i64)
  ^bb20:  // pred: ^bb15
    %226 = llvm.add %206, %205  : i64
    llvm.br ^bb13(%226 : i64)
  ^bb21:  // pred: ^bb13
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%227 : i64)
  ^bb22(%230: i64):  // 2 preds: ^bb21, ^bb32
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%232 : i64)
  ^bb24(%235: i64):  // 2 preds: ^bb23, ^bb31
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%237 : i64)
  ^bb26(%240: i64):  // 2 preds: ^bb25, ^bb30
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%242 : i64)
  ^bb28(%245: i64):  // 2 preds: ^bb27, ^bb29
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %247 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mul %230, %248  : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mul %235, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.add %252, %240  : i64
    %254 = llvm.add %253, %245  : i64
    %255 = llvm.getelementptr %247[%254] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.load %255 : !llvm.ptr<i32>
    %257 = llvm.extractvalue %202[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %230, %258  : i64
    %260 = llvm.add %259, %235  : i64
    %261 = llvm.add %260, %245  : i64
    %262 = llvm.getelementptr %257[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.load %262 : !llvm.ptr<i32>
    %264 = llvm.icmp "slt" %263, %256 : i32
    %265 = llvm.select %264, %263, %256 : i1, i32
    %266 = llvm.extractvalue %202[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mul %230, %267  : i64
    %269 = llvm.add %268, %235  : i64
    %270 = llvm.add %269, %245  : i64
    %271 = llvm.getelementptr %266[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %265, %271 : !llvm.ptr<i32>
    %272 = llvm.add %245, %244  : i64
    llvm.br ^bb28(%272 : i64)
  ^bb30:  // pred: ^bb28
    %273 = llvm.add %240, %239  : i64
    llvm.br ^bb26(%273 : i64)
  ^bb31:  // pred: ^bb26
    %274 = llvm.add %235, %234  : i64
    llvm.br ^bb24(%274 : i64)
  ^bb32:  // pred: ^bb24
    %275 = llvm.add %230, %229  : i64
    llvm.br ^bb22(%275 : i64)
  ^bb33:  // pred: ^bb22
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mlir.constant(8 : index) : i64
    %283 = llvm.mlir.null : !llvm.ptr<i32>
    %284 = llvm.getelementptr %283[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %285 = llvm.ptrtoint %284 : !llvm.ptr<i32> to i64
    %286 = llvm.mlir.constant(16 : index) : i64
    %287 = llvm.add %285, %286  : i64
    %288 = llvm.call @malloc(%287) : (i64) -> !llvm.ptr<i8>
    %289 = llvm.bitcast %288 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %290 = llvm.ptrtoint %289 : !llvm.ptr<i32> to i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.sub %286, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.urem %293, %286  : i64
    %295 = llvm.sub %293, %294  : i64
    %296 = llvm.inttoptr %295 : i64 to !llvm.ptr<i32>
    %297 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %298 = llvm.insertvalue %289, %297[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %296, %298[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.insertvalue %300, %299[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %276, %301[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %277, %302[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %278, %303[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %279, %304[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %281, %305[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %278, %306[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %279, %307[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %280, %308[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%310 : i64)
  ^bb34(%313: i64):  // 2 preds: ^bb33, ^bb44
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%315 : i64)
  ^bb36(%318: i64):  // 2 preds: ^bb35, ^bb43
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%320 : i64)
  ^bb38(%323: i64):  // 2 preds: ^bb37, ^bb42
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%325 : i64)
  ^bb40(%328: i64):  // 2 preds: ^bb39, ^bb41
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %330 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mul %313, %331  : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mul %318, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.add %335, %323  : i64
    %337 = llvm.add %336, %328  : i64
    %338 = llvm.getelementptr %330[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.load %338 : !llvm.ptr<i32>
    %340 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mul %313, %341  : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mul %318, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.add %345, %323  : i64
    %347 = llvm.add %346, %328  : i64
    %348 = llvm.getelementptr %340[%347] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %339, %348 : !llvm.ptr<i32>
    %349 = llvm.add %328, %327  : i64
    llvm.br ^bb40(%349 : i64)
  ^bb42:  // pred: ^bb40
    %350 = llvm.add %323, %322  : i64
    llvm.br ^bb38(%350 : i64)
  ^bb43:  // pred: ^bb38
    %351 = llvm.add %318, %317  : i64
    llvm.br ^bb36(%351 : i64)
  ^bb44:  // pred: ^bb36
    %352 = llvm.add %313, %312  : i64
    llvm.br ^bb34(%352 : i64)
  ^bb45:  // pred: ^bb34
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(8 : index) : i64
    %360 = llvm.mlir.null : !llvm.ptr<i32>
    %361 = llvm.getelementptr %360[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i32> to i64
    %363 = llvm.mlir.constant(16 : index) : i64
    %364 = llvm.add %362, %363  : i64
    %365 = llvm.call @malloc(%364) : (i64) -> !llvm.ptr<i8>
    %366 = llvm.bitcast %365 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i32> to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %363, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.urem %370, %363  : i64
    %372 = llvm.sub %370, %371  : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr<i32>
    %374 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %353, %378[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %354, %379[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %355, %380[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %356, %381[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %358, %382[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %355, %383[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %356, %384[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %357, %385[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%387 : i64)
  ^bb46(%390: i64):  // 2 preds: ^bb45, ^bb56
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%392 : i64)
  ^bb48(%395: i64):  // 2 preds: ^bb47, ^bb55
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%397 : i64)
  ^bb50(%400: i64):  // 2 preds: ^bb49, ^bb54
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%402 : i64)
  ^bb52(%405: i64):  // 2 preds: ^bb51, ^bb53
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %407 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mul %390, %408  : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mul %395, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.add %412, %400  : i64
    %414 = llvm.add %413, %405  : i64
    %415 = llvm.getelementptr %407[%414] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %416 = llvm.load %415 : !llvm.ptr<i32>
    %417 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mul %390, %418  : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mul %395, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.add %422, %400  : i64
    %424 = llvm.add %423, %405  : i64
    %425 = llvm.getelementptr %417[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %426 = llvm.load %425 : !llvm.ptr<i32>
    %427 = llvm.mul %416, %426  : i32
    %428 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %390, %429  : i64
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mul %395, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.add %433, %400  : i64
    %435 = llvm.add %434, %405  : i64
    %436 = llvm.getelementptr %428[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %427, %436 : !llvm.ptr<i32>
    %437 = llvm.add %405, %404  : i64
    llvm.br ^bb52(%437 : i64)
  ^bb54:  // pred: ^bb52
    %438 = llvm.add %400, %399  : i64
    llvm.br ^bb50(%438 : i64)
  ^bb55:  // pred: ^bb50
    %439 = llvm.add %395, %394  : i64
    llvm.br ^bb48(%439 : i64)
  ^bb56:  // pred: ^bb48
    %440 = llvm.add %390, %389  : i64
    llvm.br ^bb46(%440 : i64)
  ^bb57:  // pred: ^bb46
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.null : !llvm.ptr<i64>
    %444 = llvm.getelementptr %443[%441] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %445 = llvm.ptrtoint %444 : !llvm.ptr<i64> to i64
    %446 = llvm.mlir.constant(16 : index) : i64
    %447 = llvm.add %445, %446  : i64
    %448 = llvm.call @malloc(%447) : (i64) -> !llvm.ptr<i8>
    %449 = llvm.bitcast %448 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %450 = llvm.ptrtoint %449 : !llvm.ptr<i64> to i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.sub %446, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.urem %453, %446  : i64
    %455 = llvm.sub %453, %454  : i64
    %456 = llvm.inttoptr %455 : i64 to !llvm.ptr<i64>
    %457 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %458 = llvm.insertvalue %449, %457[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.insertvalue %456, %458[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.insertvalue %460, %459[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.insertvalue %441, %461[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.insertvalue %442, %462[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(4 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%464 : i64)
  ^bb58(%467: i64):  // 2 preds: ^bb57, ^bb59
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %469 = llvm.extractvalue %463[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.getelementptr %469[%467] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %470 : !llvm.ptr<i64>
    %471 = llvm.add %467, %466  : i64
    llvm.br ^bb58(%471 : i64)
  ^bb60:  // pred: ^bb58
    %472 = llvm.mlir.constant(4 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.null : !llvm.ptr<i64>
    %475 = llvm.getelementptr %474[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i64> to i64
    %477 = llvm.mlir.constant(16 : index) : i64
    %478 = llvm.add %476, %477  : i64
    %479 = llvm.call @malloc(%478) : (i64) -> !llvm.ptr<i8>
    %480 = llvm.bitcast %479 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %481 = llvm.ptrtoint %480 : !llvm.ptr<i64> to i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.sub %477, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.urem %484, %477  : i64
    %486 = llvm.sub %484, %485  : i64
    %487 = llvm.inttoptr %486 : i64 to !llvm.ptr<i64>
    %488 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %489 = llvm.insertvalue %480, %488[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.insertvalue %487, %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.insertvalue %491, %490[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.insertvalue %472, %492[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.insertvalue %473, %493[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(4 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%495 : i64)
  ^bb61(%498: i64):  // 2 preds: ^bb60, ^bb62
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %500 = llvm.extractvalue %463[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %501 = llvm.getelementptr %500[%498] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %502 = llvm.load %501 : !llvm.ptr<i64>
    %503 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %504 = llvm.load %503 : !llvm.ptr<i64>
    %505 = llvm.mul %502, %504  : i64
    %506 = llvm.extractvalue %494[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %507 = llvm.getelementptr %506[%498] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %505, %507 : !llvm.ptr<i64>
    %508 = llvm.add %498, %497  : i64
    llvm.br ^bb61(%508 : i64)
  ^bb63:  // pred: ^bb61
    %509 = llvm.mlir.constant(4 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.null : !llvm.ptr<i1>
    %512 = llvm.getelementptr %511[%509] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %513 = llvm.ptrtoint %512 : !llvm.ptr<i1> to i64
    %514 = llvm.mlir.constant(16 : index) : i64
    %515 = llvm.add %513, %514  : i64
    %516 = llvm.call @malloc(%515) : (i64) -> !llvm.ptr<i8>
    %517 = llvm.bitcast %516 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %518 = llvm.ptrtoint %517 : !llvm.ptr<i1> to i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.sub %514, %519  : i64
    %521 = llvm.add %518, %520  : i64
    %522 = llvm.urem %521, %514  : i64
    %523 = llvm.sub %521, %522  : i64
    %524 = llvm.inttoptr %523 : i64 to !llvm.ptr<i1>
    %525 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %526 = llvm.insertvalue %517, %525[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %527 = llvm.insertvalue %524, %526[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.insertvalue %528, %527[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.insertvalue %509, %529[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.insertvalue %510, %530[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(4 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%532 : i64)
  ^bb64(%535: i64):  // 2 preds: ^bb63, ^bb65
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %537 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %538 = llvm.getelementptr %537[%535] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %539 = llvm.load %538 : !llvm.ptr<i64>
    %540 = llvm.extractvalue %494[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %541 = llvm.getelementptr %540[%535] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %542 = llvm.load %541 : !llvm.ptr<i64>
    %543 = llvm.icmp "eq" %539, %542 : i64
    %544 = llvm.extractvalue %531[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %545 = llvm.getelementptr %544[%535] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %543, %545 : !llvm.ptr<i1>
    %546 = llvm.add %535, %534  : i64
    llvm.br ^bb64(%546 : i64)
  ^bb66:  // pred: ^bb64
    %547 = llvm.mlir.constant(4 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.mlir.null : !llvm.ptr<i64>
    %550 = llvm.getelementptr %549[%547] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %551 = llvm.ptrtoint %550 : !llvm.ptr<i64> to i64
    %552 = llvm.mlir.constant(16 : index) : i64
    %553 = llvm.add %551, %552  : i64
    %554 = llvm.call @malloc(%553) : (i64) -> !llvm.ptr<i8>
    %555 = llvm.bitcast %554 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %556 = llvm.ptrtoint %555 : !llvm.ptr<i64> to i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.sub %552, %557  : i64
    %559 = llvm.add %556, %558  : i64
    %560 = llvm.urem %559, %552  : i64
    %561 = llvm.sub %559, %560  : i64
    %562 = llvm.inttoptr %561 : i64 to !llvm.ptr<i64>
    %563 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %564 = llvm.insertvalue %555, %563[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %565 = llvm.insertvalue %562, %564[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.insertvalue %566, %565[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.insertvalue %547, %567[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %569 = llvm.insertvalue %548, %568[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(4 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%570 : i64)
  ^bb67(%573: i64):  // 2 preds: ^bb66, ^bb68
    %574 = llvm.icmp "slt" %573, %571 : i64
    llvm.cond_br %574, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %575 = llvm.extractvalue %531[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %576 = llvm.getelementptr %575[%573] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %577 = llvm.load %576 : !llvm.ptr<i1>
    %578 = llvm.extractvalue %463[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %579 = llvm.getelementptr %578[%573] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %580 = llvm.load %579 : !llvm.ptr<i64>
    %581 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %582 = llvm.getelementptr %581[%573] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %583 = llvm.load %582 : !llvm.ptr<i64>
    %584 = llvm.select %577, %580, %583 : i1, i64
    %585 = llvm.extractvalue %569[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.getelementptr %585[%573] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %584, %586 : !llvm.ptr<i64>
    %587 = llvm.add %573, %572  : i64
    llvm.br ^bb67(%587 : i64)
  ^bb69:  // pred: ^bb67
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mlir.constant(2 : index) : i64
    %590 = llvm.mlir.constant(2 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.mlir.constant(8 : index) : i64
    %595 = llvm.mlir.null : !llvm.ptr<i32>
    %596 = llvm.getelementptr %595[%594] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %597 = llvm.ptrtoint %596 : !llvm.ptr<i32> to i64
    %598 = llvm.mlir.constant(16 : index) : i64
    %599 = llvm.add %597, %598  : i64
    %600 = llvm.call @malloc(%599) : (i64) -> !llvm.ptr<i8>
    %601 = llvm.bitcast %600 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %602 = llvm.ptrtoint %601 : !llvm.ptr<i32> to i64
    %603 = llvm.mlir.constant(1 : index) : i64
    %604 = llvm.sub %598, %603  : i64
    %605 = llvm.add %602, %604  : i64
    %606 = llvm.urem %605, %598  : i64
    %607 = llvm.sub %605, %606  : i64
    %608 = llvm.inttoptr %607 : i64 to !llvm.ptr<i32>
    %609 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %610 = llvm.insertvalue %601, %609[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %608, %610[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.insertvalue %612, %611[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %588, %613[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.insertvalue %589, %614[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.insertvalue %590, %615[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.insertvalue %591, %616[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.insertvalue %593, %617[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.insertvalue %590, %618[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.insertvalue %591, %619[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.insertvalue %592, %620[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.mlir.constant(2 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%622 : i64)
  ^bb70(%625: i64):  // 2 preds: ^bb69, ^bb80
    %626 = llvm.icmp "slt" %625, %623 : i64
    llvm.cond_br %626, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %627 = llvm.mlir.constant(0 : index) : i64
    %628 = llvm.mlir.constant(2 : index) : i64
    %629 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%627 : i64)
  ^bb72(%630: i64):  // 2 preds: ^bb71, ^bb79
    %631 = llvm.icmp "slt" %630, %628 : i64
    llvm.cond_br %631, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.mlir.constant(2 : index) : i64
    %634 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%632 : i64)
  ^bb74(%635: i64):  // 2 preds: ^bb73, ^bb78
    %636 = llvm.icmp "slt" %635, %633 : i64
    llvm.cond_br %636, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %637 = llvm.mlir.constant(0 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%637 : i64)
  ^bb76(%640: i64):  // 2 preds: ^bb75, ^bb77
    %641 = llvm.icmp "slt" %640, %638 : i64
    llvm.cond_br %641, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %642 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.mlir.constant(4 : index) : i64
    %644 = llvm.mul %625, %643  : i64
    %645 = llvm.mlir.constant(2 : index) : i64
    %646 = llvm.mul %630, %645  : i64
    %647 = llvm.add %644, %646  : i64
    %648 = llvm.add %647, %635  : i64
    %649 = llvm.add %648, %26  : i64
    %650 = llvm.getelementptr %642[%649] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %651 = llvm.load %650 : !llvm.ptr<i32>
    %652 = llvm.extractvalue %621[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.mlir.constant(4 : index) : i64
    %654 = llvm.mul %625, %653  : i64
    %655 = llvm.mlir.constant(2 : index) : i64
    %656 = llvm.mul %630, %655  : i64
    %657 = llvm.add %654, %656  : i64
    %658 = llvm.add %657, %635  : i64
    %659 = llvm.add %658, %640  : i64
    %660 = llvm.getelementptr %652[%659] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %651, %660 : !llvm.ptr<i32>
    %661 = llvm.add %640, %639  : i64
    llvm.br ^bb76(%661 : i64)
  ^bb78:  // pred: ^bb76
    %662 = llvm.add %635, %634  : i64
    llvm.br ^bb74(%662 : i64)
  ^bb79:  // pred: ^bb74
    %663 = llvm.add %630, %629  : i64
    llvm.br ^bb72(%663 : i64)
  ^bb80:  // pred: ^bb72
    %664 = llvm.add %625, %624  : i64
    llvm.br ^bb70(%664 : i64)
  ^bb81:  // pred: ^bb70
    %665 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %666 = llvm.insertvalue %202, %665[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %667 = llvm.insertvalue %621, %666[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %667 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(3 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(0 : i64) : i64
    %118 = llvm.getelementptr %91[%117] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %118 : !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(4 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %127[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %128[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %127[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %128[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(3 : i64) : i64
    %145 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %127[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
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

