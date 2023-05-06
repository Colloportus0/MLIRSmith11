module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[5], [7]]> : tensor<2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_4(dense<[[[[7], [4]]]]> : tensor<1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: !llvm.ptr<i1>, %arg4: !llvm.ptr<i1>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0.0099999997764825821 : f64) : f64
    %16 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(2 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x array<1 x i32>>>
    %71 = llvm.bitcast %70 : !llvm.ptr<array<2 x array<1 x i32>>> to !llvm.ptr<i32>
    %72 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %73 = llvm.insertvalue %71, %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.insertvalue %71, %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.insertvalue %75, %74[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.null : !llvm.ptr<i32>
    %93 = llvm.getelementptr %92[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i32> to i64
    %95 = llvm.mlir.constant(16 : index) : i64
    %96 = llvm.add %94, %95  : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i32> to i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.sub %95, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.urem %102, %95  : i64
    %104 = llvm.sub %102, %103  : i64
    %105 = llvm.inttoptr %104 : i64 to !llvm.ptr<i32>
    %106 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %107 = llvm.insertvalue %98, %106[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %85, %110[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %86, %111[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %87, %112[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %88, %113[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %90, %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %87, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %88, %116[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %89, %117[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%119 : i64)
  ^bb1(%122: i64):  // 2 preds: ^bb0, ^bb11
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%124 : i64)
  ^bb3(%127: i64):  // 2 preds: ^bb2, ^bb10
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%129 : i64)
  ^bb5(%132: i64):  // 2 preds: ^bb4, ^bb9
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%134 : i64)
  ^bb7(%137: i64):  // 2 preds: ^bb6, ^bb8
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %139 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.add %132, %137  : i64
    %141 = llvm.getelementptr %139[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.load %141 : !llvm.ptr<i32>
    %143 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mul %122, %144  : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %127, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.add %148, %132  : i64
    %150 = llvm.add %149, %137  : i64
    %151 = llvm.getelementptr %143[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.load %151 : !llvm.ptr<i32>
    %153 = llvm.icmp "slt" %142, %152 : i32
    %154 = llvm.select %153, %142, %152 : i1, i32
    %155 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mul %122, %156  : i64
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mul %127, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.add %160, %132  : i64
    %162 = llvm.add %161, %137  : i64
    %163 = llvm.getelementptr %155[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %154, %163 : !llvm.ptr<i32>
    %164 = llvm.add %137, %136  : i64
    llvm.br ^bb7(%164 : i64)
  ^bb9:  // pred: ^bb7
    %165 = llvm.add %132, %131  : i64
    llvm.br ^bb5(%165 : i64)
  ^bb10:  // pred: ^bb5
    %166 = llvm.add %127, %126  : i64
    llvm.br ^bb3(%166 : i64)
  ^bb11:  // pred: ^bb3
    %167 = llvm.add %122, %121  : i64
    llvm.br ^bb1(%167 : i64)
  ^bb12:  // pred: ^bb1
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mlir.null : !llvm.ptr<f64>
    %176 = llvm.getelementptr %175[%174] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<f64> to i64
    %178 = llvm.mlir.constant(16 : index) : i64
    %179 = llvm.add %177, %178  : i64
    %180 = llvm.call @malloc(%179) : (i64) -> !llvm.ptr<i8>
    %181 = llvm.bitcast %180 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %182 = llvm.ptrtoint %181 : !llvm.ptr<f64> to i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.sub %178, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.urem %185, %178  : i64
    %187 = llvm.sub %185, %186  : i64
    %188 = llvm.inttoptr %187 : i64 to !llvm.ptr<f64>
    %189 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %190 = llvm.insertvalue %181, %189[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %188, %190[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %168, %193[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %169, %194[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %170, %195[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %171, %196[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %173, %197[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %170, %198[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %171, %199[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %172, %200[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%202 : i64)
  ^bb13(%205: i64):  // 2 preds: ^bb12, ^bb23
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%207 : i64)
  ^bb15(%210: i64):  // 2 preds: ^bb14, ^bb22
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%212 : i64)
  ^bb17(%215: i64):  // 2 preds: ^bb16, ^bb21
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%217 : i64)
  ^bb19(%220: i64):  // 2 preds: ^bb18, ^bb20
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %222 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %205, %223  : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mul %210, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %215  : i64
    %229 = llvm.add %228, %220  : i64
    %230 = llvm.getelementptr %222[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.sitofp %231 : i32 to f64
    %233 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mul %205, %234  : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %210, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.add %238, %215  : i64
    %240 = llvm.add %239, %220  : i64
    %241 = llvm.getelementptr %233[%240] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %232, %241 : !llvm.ptr<f64>
    %242 = llvm.add %220, %219  : i64
    llvm.br ^bb19(%242 : i64)
  ^bb21:  // pred: ^bb19
    %243 = llvm.add %215, %214  : i64
    llvm.br ^bb17(%243 : i64)
  ^bb22:  // pred: ^bb17
    %244 = llvm.add %210, %209  : i64
    llvm.br ^bb15(%244 : i64)
  ^bb23:  // pred: ^bb15
    %245 = llvm.add %205, %204  : i64
    llvm.br ^bb13(%245 : i64)
  ^bb24:  // pred: ^bb13
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.null : !llvm.ptr<f64>
    %254 = llvm.getelementptr %253[%252] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<f64> to i64
    %256 = llvm.mlir.constant(16 : index) : i64
    %257 = llvm.add %255, %256  : i64
    %258 = llvm.call @malloc(%257) : (i64) -> !llvm.ptr<i8>
    %259 = llvm.bitcast %258 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<f64> to i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.sub %256, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.urem %263, %256  : i64
    %265 = llvm.sub %263, %264  : i64
    %266 = llvm.inttoptr %265 : i64 to !llvm.ptr<f64>
    %267 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %268 = llvm.insertvalue %259, %267[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %266, %268[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.insertvalue %270, %269[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %246, %271[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %247, %272[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %248, %273[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %249, %274[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %251, %275[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %248, %276[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %249, %277[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %250, %278[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%280 : i64)
  ^bb25(%283: i64):  // 2 preds: ^bb24, ^bb35
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%285 : i64)
  ^bb27(%288: i64):  // 2 preds: ^bb26, ^bb34
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%290 : i64)
  ^bb29(%293: i64):  // 2 preds: ^bb28, ^bb33
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%295 : i64)
  ^bb31(%298: i64):  // 2 preds: ^bb30, ^bb32
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %300 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %283, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %288, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %293  : i64
    %307 = llvm.add %306, %298  : i64
    %308 = llvm.getelementptr %300[%307] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %309 = llvm.load %308 : !llvm.ptr<f64>
    %310 = llvm.fcmp "olt" %309, %16 : f64
    %311 = llvm.fmul %309, %15  : f64
    %312 = llvm.select %310, %311, %309 : i1, f64
    %313 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mul %283, %314  : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mul %288, %316  : i64
    %318 = llvm.add %315, %317  : i64
    %319 = llvm.add %318, %293  : i64
    %320 = llvm.add %319, %298  : i64
    %321 = llvm.getelementptr %313[%320] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %312, %321 : !llvm.ptr<f64>
    %322 = llvm.add %298, %297  : i64
    llvm.br ^bb31(%322 : i64)
  ^bb33:  // pred: ^bb31
    %323 = llvm.add %293, %292  : i64
    llvm.br ^bb29(%323 : i64)
  ^bb34:  // pred: ^bb29
    %324 = llvm.add %288, %287  : i64
    llvm.br ^bb27(%324 : i64)
  ^bb35:  // pred: ^bb27
    %325 = llvm.add %283, %282  : i64
    llvm.br ^bb25(%325 : i64)
  ^bb36:  // pred: ^bb25
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.null : !llvm.ptr<i32>
    %335 = llvm.getelementptr %334[%333] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %336 = llvm.ptrtoint %335 : !llvm.ptr<i32> to i64
    %337 = llvm.mlir.constant(16 : index) : i64
    %338 = llvm.add %336, %337  : i64
    %339 = llvm.call @malloc(%338) : (i64) -> !llvm.ptr<i8>
    %340 = llvm.bitcast %339 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i32> to i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.sub %337, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.urem %344, %337  : i64
    %346 = llvm.sub %344, %345  : i64
    %347 = llvm.inttoptr %346 : i64 to !llvm.ptr<i32>
    %348 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %349 = llvm.insertvalue %340, %348[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %347, %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.insertvalue %351, %350[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %326, %352[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %327, %353[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %328, %354[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %332, %356[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %329, %358[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %330, %359[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%361 : i64)
  ^bb37(%364: i64):  // 2 preds: ^bb36, ^bb47
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%366 : i64)
  ^bb39(%369: i64):  // 2 preds: ^bb38, ^bb46
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%371 : i64)
  ^bb41(%374: i64):  // 2 preds: ^bb40, ^bb45
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%376 : i64)
  ^bb43(%379: i64):  // 2 preds: ^bb42, ^bb44
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %381 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %369, %382  : i64
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mul %17, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.add %386, %379  : i64
    %388 = llvm.getelementptr %381[%387] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %389 = llvm.load %388 : !llvm.ptr<i1>
    %390 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %391 = llvm.load %390 : !llvm.ptr<i32>
    %392 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mul %364, %393  : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mul %369, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %374  : i64
    %399 = llvm.add %398, %17  : i64
    %400 = llvm.getelementptr %392[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %401 = llvm.load %400 : !llvm.ptr<i32>
    %402 = llvm.select %389, %391, %401 : i1, i32
    %403 = llvm.extractvalue %360[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mul %364, %404  : i64
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mul %369, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mul %374, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.add %411, %379  : i64
    %413 = llvm.getelementptr %403[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %402, %413 : !llvm.ptr<i32>
    %414 = llvm.add %379, %378  : i64
    llvm.br ^bb43(%414 : i64)
  ^bb45:  // pred: ^bb43
    %415 = llvm.add %374, %373  : i64
    llvm.br ^bb41(%415 : i64)
  ^bb46:  // pred: ^bb41
    %416 = llvm.add %369, %368  : i64
    llvm.br ^bb39(%416 : i64)
  ^bb47:  // pred: ^bb39
    %417 = llvm.add %364, %363  : i64
    llvm.br ^bb37(%417 : i64)
  ^bb48:  // pred: ^bb37
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.null : !llvm.ptr<i64>
    %421 = llvm.getelementptr %420[%418] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %422 = llvm.ptrtoint %421 : !llvm.ptr<i64> to i64
    %423 = llvm.mlir.constant(16 : index) : i64
    %424 = llvm.add %422, %423  : i64
    %425 = llvm.call @malloc(%424) : (i64) -> !llvm.ptr<i8>
    %426 = llvm.bitcast %425 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<i64> to i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.sub %423, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.urem %430, %423  : i64
    %432 = llvm.sub %430, %431  : i64
    %433 = llvm.inttoptr %432 : i64 to !llvm.ptr<i64>
    %434 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %435 = llvm.insertvalue %426, %434[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.insertvalue %433, %435[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.insertvalue %437, %436[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.insertvalue %418, %438[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.insertvalue %419, %439[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%441 : i64)
  ^bb49(%444: i64):  // 2 preds: ^bb48, ^bb50
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %446 = llvm.extractvalue %440[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.getelementptr %446[%444] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %447 : !llvm.ptr<i64>
    %448 = llvm.add %444, %443  : i64
    llvm.br ^bb49(%448 : i64)
  ^bb51:  // pred: ^bb49
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.null : !llvm.ptr<i64>
    %452 = llvm.getelementptr %451[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i64> to i64
    %454 = llvm.mlir.constant(16 : index) : i64
    %455 = llvm.add %453, %454  : i64
    %456 = llvm.call @malloc(%455) : (i64) -> !llvm.ptr<i8>
    %457 = llvm.bitcast %456 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i64> to i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.sub %454, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.urem %461, %454  : i64
    %463 = llvm.sub %461, %462  : i64
    %464 = llvm.inttoptr %463 : i64 to !llvm.ptr<i64>
    %465 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %466 = llvm.insertvalue %457, %465[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.insertvalue %464, %466[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.insertvalue %468, %467[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.insertvalue %449, %469[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.insertvalue %450, %470[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%472 : i64)
  ^bb52(%475: i64):  // 2 preds: ^bb51, ^bb53
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %477 = llvm.extractvalue %440[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.getelementptr %477[%475] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %479 = llvm.load %478 : !llvm.ptr<i64>
    %480 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %481 = llvm.load %480 : !llvm.ptr<i64>
    %482 = llvm.mul %479, %481  : i64
    %483 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.getelementptr %483[%475] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %482, %484 : !llvm.ptr<i64>
    %485 = llvm.add %475, %474  : i64
    llvm.br ^bb52(%485 : i64)
  ^bb54:  // pred: ^bb52
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.null : !llvm.ptr<i1>
    %489 = llvm.getelementptr %488[%486] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %490 = llvm.ptrtoint %489 : !llvm.ptr<i1> to i64
    %491 = llvm.mlir.constant(16 : index) : i64
    %492 = llvm.add %490, %491  : i64
    %493 = llvm.call @malloc(%492) : (i64) -> !llvm.ptr<i8>
    %494 = llvm.bitcast %493 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %495 = llvm.ptrtoint %494 : !llvm.ptr<i1> to i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.sub %491, %496  : i64
    %498 = llvm.add %495, %497  : i64
    %499 = llvm.urem %498, %491  : i64
    %500 = llvm.sub %498, %499  : i64
    %501 = llvm.inttoptr %500 : i64 to !llvm.ptr<i1>
    %502 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %503 = llvm.insertvalue %494, %502[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %504 = llvm.insertvalue %501, %503[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.insertvalue %505, %504[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %507 = llvm.insertvalue %486, %506[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %508 = llvm.insertvalue %487, %507[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%509 : i64)
  ^bb55(%512: i64):  // 2 preds: ^bb54, ^bb56
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %514 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.getelementptr %514[%512] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %516 = llvm.load %515 : !llvm.ptr<i64>
    %517 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %518 = llvm.getelementptr %517[%512] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %519 = llvm.load %518 : !llvm.ptr<i64>
    %520 = llvm.icmp "eq" %516, %519 : i64
    %521 = llvm.extractvalue %508[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %522 = llvm.getelementptr %521[%512] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %520, %522 : !llvm.ptr<i1>
    %523 = llvm.add %512, %511  : i64
    llvm.br ^bb55(%523 : i64)
  ^bb57:  // pred: ^bb55
    %524 = llvm.mlir.constant(4 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.null : !llvm.ptr<i64>
    %527 = llvm.getelementptr %526[%524] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %528 = llvm.ptrtoint %527 : !llvm.ptr<i64> to i64
    %529 = llvm.mlir.constant(16 : index) : i64
    %530 = llvm.add %528, %529  : i64
    %531 = llvm.call @malloc(%530) : (i64) -> !llvm.ptr<i8>
    %532 = llvm.bitcast %531 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %533 = llvm.ptrtoint %532 : !llvm.ptr<i64> to i64
    %534 = llvm.mlir.constant(1 : index) : i64
    %535 = llvm.sub %529, %534  : i64
    %536 = llvm.add %533, %535  : i64
    %537 = llvm.urem %536, %529  : i64
    %538 = llvm.sub %536, %537  : i64
    %539 = llvm.inttoptr %538 : i64 to !llvm.ptr<i64>
    %540 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %541 = llvm.insertvalue %532, %540[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %542 = llvm.insertvalue %539, %541[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.insertvalue %543, %542[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %545 = llvm.insertvalue %524, %544[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %546 = llvm.insertvalue %525, %545[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%547 : i64)
  ^bb58(%550: i64):  // 2 preds: ^bb57, ^bb59
    %551 = llvm.icmp "slt" %550, %548 : i64
    llvm.cond_br %551, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %552 = llvm.extractvalue %508[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.getelementptr %552[%550] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %554 = llvm.load %553 : !llvm.ptr<i1>
    %555 = llvm.extractvalue %440[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %556 = llvm.getelementptr %555[%550] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %557 = llvm.load %556 : !llvm.ptr<i64>
    %558 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %559 = llvm.getelementptr %558[%550] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %560 = llvm.load %559 : !llvm.ptr<i64>
    %561 = llvm.select %554, %557, %560 : i1, i64
    %562 = llvm.extractvalue %546[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.getelementptr %562[%550] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %561, %563 : !llvm.ptr<i64>
    %564 = llvm.add %550, %549  : i64
    llvm.br ^bb58(%564 : i64)
  ^bb60:  // pred: ^bb58
    %565 = llvm.mlir.constant(1 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(2 : index) : i64
    %568 = llvm.mlir.constant(2 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(4 : index) : i64
    %571 = llvm.mlir.constant(4 : index) : i64
    %572 = llvm.mlir.constant(4 : index) : i64
    %573 = llvm.mlir.null : !llvm.ptr<i32>
    %574 = llvm.getelementptr %573[%572] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %575 = llvm.ptrtoint %574 : !llvm.ptr<i32> to i64
    %576 = llvm.mlir.constant(16 : index) : i64
    %577 = llvm.add %575, %576  : i64
    %578 = llvm.call @malloc(%577) : (i64) -> !llvm.ptr<i8>
    %579 = llvm.bitcast %578 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %580 = llvm.ptrtoint %579 : !llvm.ptr<i32> to i64
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.sub %576, %581  : i64
    %583 = llvm.add %580, %582  : i64
    %584 = llvm.urem %583, %576  : i64
    %585 = llvm.sub %583, %584  : i64
    %586 = llvm.inttoptr %585 : i64 to !llvm.ptr<i32>
    %587 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %588 = llvm.insertvalue %579, %587[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %586, %588[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.insertvalue %590, %589[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %565, %591[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %566, %592[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %567, %593[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %568, %594[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %571, %595[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %570, %596[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.insertvalue %568, %597[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.insertvalue %569, %598[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%600 : i64)
  ^bb61(%603: i64):  // 2 preds: ^bb60, ^bb71
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%605 : i64)
  ^bb63(%608: i64):  // 2 preds: ^bb62, ^bb70
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(2 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%610 : i64)
  ^bb65(%613: i64):  // 2 preds: ^bb64, ^bb69
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(2 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%615 : i64)
  ^bb67(%618: i64):  // 2 preds: ^bb66, ^bb68
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %620 = llvm.extractvalue %360[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.mlir.constant(4 : index) : i64
    %622 = llvm.mul %17, %621  : i64
    %623 = llvm.mlir.constant(4 : index) : i64
    %624 = llvm.mul %17, %623  : i64
    %625 = llvm.add %622, %624  : i64
    %626 = llvm.mlir.constant(2 : index) : i64
    %627 = llvm.mul %613, %626  : i64
    %628 = llvm.add %625, %627  : i64
    %629 = llvm.add %628, %618  : i64
    %630 = llvm.getelementptr %620[%629] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %631 = llvm.load %630 : !llvm.ptr<i32>
    %632 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.mlir.constant(4 : index) : i64
    %634 = llvm.mul %603, %633  : i64
    %635 = llvm.mlir.constant(4 : index) : i64
    %636 = llvm.mul %608, %635  : i64
    %637 = llvm.add %634, %636  : i64
    %638 = llvm.mlir.constant(2 : index) : i64
    %639 = llvm.mul %613, %638  : i64
    %640 = llvm.add %637, %639  : i64
    %641 = llvm.add %640, %618  : i64
    %642 = llvm.getelementptr %632[%641] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %631, %642 : !llvm.ptr<i32>
    %643 = llvm.add %618, %617  : i64
    llvm.br ^bb67(%643 : i64)
  ^bb69:  // pred: ^bb67
    %644 = llvm.add %613, %612  : i64
    llvm.br ^bb65(%644 : i64)
  ^bb70:  // pred: ^bb65
    %645 = llvm.add %608, %607  : i64
    llvm.br ^bb63(%645 : i64)
  ^bb71:  // pred: ^bb63
    %646 = llvm.add %603, %602  : i64
    llvm.br ^bb61(%646 : i64)
  ^bb72:  // pred: ^bb61
    %647 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %648 = llvm.insertvalue %279, %647[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %649 = llvm.insertvalue %599, %648[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %649 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.getelementptr %0[%16] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.getelementptr %28[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %49, %19 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %50 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %51 = llvm.extractvalue %50[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %52 = llvm.extractvalue %50[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.mlir.constant(2 : i64) : i64
    %54 = llvm.mlir.constant(16 : i64) : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %57 = llvm.mlir.constant(4 : i64) : i64
    %58 = llvm.call @omTensorCreateUntyped(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.mlir.constant(1 : i64) : i64
    %60 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.bitcast %60 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %62 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%58, %59, %61, %63) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %64 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%58, %64) : (!llvm.ptr<i8>, i64) -> ()
    %65 = llvm.call @omTensorGetShape(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.call @omTensorGetStrides(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.mlir.constant(0 : i64) : i64
    %68 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %65[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %66[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(1 : i64) : i64
    %73 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %65[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %66[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(2 : i64) : i64
    %78 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %65[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %66[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(3 : i64) : i64
    %83 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %65[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %51[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %66[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(0 : i64) : i64
    %88 = llvm.getelementptr %56[%87] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %58, %88 : !llvm.ptr<ptr<i8>>
    %89 = llvm.mlir.constant(4 : i64) : i64
    %90 = llvm.call @omTensorCreateUntyped(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.bitcast %92 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %94 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.bitcast %94 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%90, %91, %93, %95) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %96 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%90, %96) : (!llvm.ptr<i8>, i64) -> ()
    %97 = llvm.call @omTensorGetShape(%90) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.call @omTensorGetStrides(%90) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.mlir.constant(0 : i64) : i64
    %100 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %97[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %98[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %97[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %98[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(2 : i64) : i64
    %110 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %97[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %98[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(3 : i64) : i64
    %115 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %97[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %98[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.getelementptr %56[%119] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %90, %120 : !llvm.ptr<ptr<i8>>
    %121 = llvm.call @omTensorListCreate(%56, %53, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %121 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<124 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<124 x i8>> to !llvm.ptr<i8>
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

