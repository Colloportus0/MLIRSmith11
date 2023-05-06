module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[2, 2, 2, 1, 1]> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[2, 2, 2, 1, 1]> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[[[[[3]], [[3]]], [[[4]], [[4]]]], [[[[3]], [[3]]], [[[4]], [[4]]]]]> : tensor<2x2x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<1 x array<1 x i32>>>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[3.000000e+00]]], [[[4.000000e+00]]]]> : tensor<2x1x1x1xf64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x f64>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(2147483647 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x f64>>>>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x f64>>>>> to !llvm.ptr<f64>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x array<1 x i32>>>>>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<5 x i64>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(5 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %77 = llvm.bitcast %76 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %79 = llvm.insertvalue %77, %78[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %83 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<5 x i64>>
    %84 = llvm.bitcast %83 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.mlir.constant(5 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.mlir.constant(5 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.null : !llvm.ptr<i64>
    %97 = llvm.getelementptr %96[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<i64> to i64
    %99 = llvm.mlir.constant(16 : index) : i64
    %100 = llvm.add %98, %99  : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.bitcast %101 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %103 = llvm.ptrtoint %102 : !llvm.ptr<i64> to i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.sub %99, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.urem %106, %99  : i64
    %108 = llvm.sub %106, %107  : i64
    %109 = llvm.inttoptr %108 : i64 to !llvm.ptr<i64>
    %110 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %111 = llvm.insertvalue %102, %110[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %109, %111[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.insertvalue %113, %112[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %94, %114[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %95, %115[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(5 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%117 : i64)
  ^bb1(%120: i64):  // 2 preds: ^bb0, ^bb2
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %122 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.getelementptr %122[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %123 : !llvm.ptr<i64>
    %124 = llvm.add %120, %119  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb3:  // pred: ^bb1
    %125 = llvm.mlir.constant(5 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.null : !llvm.ptr<i64>
    %128 = llvm.getelementptr %127[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<i64> to i64
    %130 = llvm.mlir.constant(16 : index) : i64
    %131 = llvm.add %129, %130  : i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<i64> to i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.sub %130, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.urem %137, %130  : i64
    %139 = llvm.sub %137, %138  : i64
    %140 = llvm.inttoptr %139 : i64 to !llvm.ptr<i64>
    %141 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %142 = llvm.insertvalue %133, %141[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %140, %142[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.insertvalue %144, %143[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.insertvalue %125, %145[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %126, %146[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(5 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%148 : i64)
  ^bb4(%151: i64):  // 2 preds: ^bb3, ^bb5
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %153 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %153[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %157 = llvm.load %156 : !llvm.ptr<i64>
    %158 = llvm.mul %155, %157  : i64
    %159 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.getelementptr %159[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %160 : !llvm.ptr<i64>
    %161 = llvm.add %151, %150  : i64
    llvm.br ^bb4(%161 : i64)
  ^bb6:  // pred: ^bb4
    %162 = llvm.mlir.constant(5 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.null : !llvm.ptr<i1>
    %165 = llvm.getelementptr %164[%162] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %166 = llvm.ptrtoint %165 : !llvm.ptr<i1> to i64
    %167 = llvm.mlir.constant(16 : index) : i64
    %168 = llvm.add %166, %167  : i64
    %169 = llvm.call @malloc(%168) : (i64) -> !llvm.ptr<i8>
    %170 = llvm.bitcast %169 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<i1> to i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.sub %167, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.urem %174, %167  : i64
    %176 = llvm.sub %174, %175  : i64
    %177 = llvm.inttoptr %176 : i64 to !llvm.ptr<i1>
    %178 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %179 = llvm.insertvalue %170, %178[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %177, %179[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.insertvalue %181, %180[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %162, %182[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %163, %183[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(5 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%185 : i64)
  ^bb7(%188: i64):  // 2 preds: ^bb6, ^bb8
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %190 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.getelementptr %193[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %195 = llvm.load %194 : !llvm.ptr<i64>
    %196 = llvm.icmp "eq" %192, %195 : i64
    %197 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.getelementptr %197[%188] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %196, %198 : !llvm.ptr<i1>
    %199 = llvm.add %188, %187  : i64
    llvm.br ^bb7(%199 : i64)
  ^bb9:  // pred: ^bb7
    %200 = llvm.mlir.constant(5 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.null : !llvm.ptr<i64>
    %203 = llvm.getelementptr %202[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<i64> to i64
    %205 = llvm.mlir.constant(16 : index) : i64
    %206 = llvm.add %204, %205  : i64
    %207 = llvm.call @malloc(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.bitcast %207 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i64> to i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.sub %205, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.urem %212, %205  : i64
    %214 = llvm.sub %212, %213  : i64
    %215 = llvm.inttoptr %214 : i64 to !llvm.ptr<i64>
    %216 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %217 = llvm.insertvalue %208, %216[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %215, %217[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.insertvalue %219, %218[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.insertvalue %200, %220[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %201, %221[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(5 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%223 : i64)
  ^bb10(%226: i64):  // 2 preds: ^bb9, ^bb11
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %228 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %228[%226] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %230 = llvm.load %229 : !llvm.ptr<i1>
    %231 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.getelementptr %231[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %233 = llvm.load %232 : !llvm.ptr<i64>
    %234 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.getelementptr %234[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %236 = llvm.load %235 : !llvm.ptr<i64>
    %237 = llvm.select %230, %233, %236 : i1, i64
    %238 = llvm.extractvalue %222[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %237, %239 : !llvm.ptr<i64>
    %240 = llvm.add %226, %225  : i64
    llvm.br ^bb10(%240 : i64)
  ^bb12:  // pred: ^bb10
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.constant(8 : index) : i64
    %249 = llvm.mlir.null : !llvm.ptr<i32>
    %250 = llvm.getelementptr %249[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i32> to i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.add %251, %252  : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i32> to i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.sub %252, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.urem %259, %252  : i64
    %261 = llvm.sub %259, %260  : i64
    %262 = llvm.inttoptr %261 : i64 to !llvm.ptr<i32>
    %263 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %264 = llvm.insertvalue %255, %263[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %265 = llvm.insertvalue %262, %264[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.insertvalue %266, %265[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %268 = llvm.insertvalue %241, %267[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %269 = llvm.insertvalue %242, %268[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %270 = llvm.insertvalue %243, %269[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %271 = llvm.insertvalue %244, %270[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %272 = llvm.insertvalue %245, %271[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %273 = llvm.insertvalue %247, %272[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %274 = llvm.insertvalue %243, %273[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %275 = llvm.insertvalue %244, %274[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %276 = llvm.insertvalue %245, %275[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %277 = llvm.insertvalue %246, %276[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%278 : i64)
  ^bb13(%281: i64):  // 2 preds: ^bb12, ^bb26
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%283 : i64)
  ^bb15(%286: i64):  // 2 preds: ^bb14, ^bb25
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%288 : i64)
  ^bb17(%291: i64):  // 2 preds: ^bb16, ^bb24
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%293 : i64)
  ^bb19(%296: i64):  // 2 preds: ^bb18, ^bb23
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%298 : i64)
  ^bb21(%301: i64):  // 2 preds: ^bb20, ^bb22
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %303 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %304 = llvm.mlir.constant(4 : index) : i64
    %305 = llvm.mul %281, %304  : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mul %286, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.add %308, %291  : i64
    %310 = llvm.add %309, %13  : i64
    %311 = llvm.add %310, %13  : i64
    %312 = llvm.getelementptr %303[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %313 = llvm.load %312 : !llvm.ptr<i32>
    %314 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %315 = llvm.mlir.constant(4 : index) : i64
    %316 = llvm.mul %281, %315  : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mul %286, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.add %319, %291  : i64
    %321 = llvm.add %320, %296  : i64
    %322 = llvm.add %321, %301  : i64
    %323 = llvm.getelementptr %314[%322] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %313, %323 : !llvm.ptr<i32>
    %324 = llvm.add %301, %300  : i64
    llvm.br ^bb21(%324 : i64)
  ^bb23:  // pred: ^bb21
    %325 = llvm.add %296, %295  : i64
    llvm.br ^bb19(%325 : i64)
  ^bb24:  // pred: ^bb19
    %326 = llvm.add %291, %290  : i64
    llvm.br ^bb17(%326 : i64)
  ^bb25:  // pred: ^bb17
    %327 = llvm.add %286, %285  : i64
    llvm.br ^bb15(%327 : i64)
  ^bb26:  // pred: ^bb15
    %328 = llvm.add %281, %280  : i64
    llvm.br ^bb13(%328 : i64)
  ^bb27:  // pred: ^bb13
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(8 : index) : i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.mlir.null : !llvm.ptr<i32>
    %340 = llvm.getelementptr %339[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i32> to i64
    %342 = llvm.mlir.constant(16 : index) : i64
    %343 = llvm.add %341, %342  : i64
    %344 = llvm.call @malloc(%343) : (i64) -> !llvm.ptr<i8>
    %345 = llvm.bitcast %344 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i32> to i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.sub %342, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.urem %349, %342  : i64
    %351 = llvm.sub %349, %350  : i64
    %352 = llvm.inttoptr %351 : i64 to !llvm.ptr<i32>
    %353 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %354 = llvm.insertvalue %345, %353[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %355 = llvm.insertvalue %352, %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.insertvalue %356, %355[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %358 = llvm.insertvalue %329, %357[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %359 = llvm.insertvalue %330, %358[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %360 = llvm.insertvalue %331, %359[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %361 = llvm.insertvalue %332, %360[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %362 = llvm.insertvalue %333, %361[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %363 = llvm.insertvalue %337, %362[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %364 = llvm.insertvalue %336, %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %365 = llvm.insertvalue %335, %364[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %366 = llvm.insertvalue %333, %365[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %367 = llvm.insertvalue %334, %366[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%368 : i64)
  ^bb28(%371: i64):  // 2 preds: ^bb27, ^bb41
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%373 : i64)
  ^bb30(%376: i64):  // 2 preds: ^bb29, ^bb40
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%378 : i64)
  ^bb32(%381: i64):  // 2 preds: ^bb31, ^bb39
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%383 : i64)
  ^bb34(%386: i64):  // 2 preds: ^bb33, ^bb38
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%388 : i64)
  ^bb36(%391: i64):  // 2 preds: ^bb35, ^bb37
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %393 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mul %371, %394  : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %376, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.add %398, %381  : i64
    %400 = llvm.add %399, %386  : i64
    %401 = llvm.add %400, %13  : i64
    %402 = llvm.getelementptr %393[%401] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %403 = llvm.load %402 : !llvm.ptr<i32>
    %404 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %376, %405  : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mul %13, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mul %386, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.add %412, %391  : i64
    %414 = llvm.getelementptr %404[%413] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %415 = llvm.load %414 : !llvm.ptr<i32>
    %416 = llvm.icmp "sgt" %403, %415 : i32
    %417 = llvm.select %416, %403, %415 : i1, i32
    %418 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %419 = llvm.mlir.constant(8 : index) : i64
    %420 = llvm.mul %371, %419  : i64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mul %376, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mul %381, %424  : i64
    %426 = llvm.add %423, %425  : i64
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mul %386, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.add %429, %391  : i64
    %431 = llvm.getelementptr %418[%430] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %417, %431 : !llvm.ptr<i32>
    %432 = llvm.add %391, %390  : i64
    llvm.br ^bb36(%432 : i64)
  ^bb38:  // pred: ^bb36
    %433 = llvm.add %386, %385  : i64
    llvm.br ^bb34(%433 : i64)
  ^bb39:  // pred: ^bb34
    %434 = llvm.add %381, %380  : i64
    llvm.br ^bb32(%434 : i64)
  ^bb40:  // pred: ^bb32
    %435 = llvm.add %376, %375  : i64
    llvm.br ^bb30(%435 : i64)
  ^bb41:  // pred: ^bb30
    %436 = llvm.add %371, %370  : i64
    llvm.br ^bb28(%436 : i64)
  ^bb42:  // pred: ^bb28
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mlir.constant(8 : index) : i64
    %444 = llvm.mlir.constant(16 : index) : i64
    %445 = llvm.mlir.null : !llvm.ptr<i32>
    %446 = llvm.getelementptr %445[%444] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %447 = llvm.ptrtoint %446 : !llvm.ptr<i32> to i64
    %448 = llvm.mlir.constant(16 : index) : i64
    %449 = llvm.add %447, %448  : i64
    %450 = llvm.call @malloc(%449) : (i64) -> !llvm.ptr<i8>
    %451 = llvm.bitcast %450 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i32> to i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.sub %448, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.urem %455, %448  : i64
    %457 = llvm.sub %455, %456  : i64
    %458 = llvm.inttoptr %457 : i64 to !llvm.ptr<i32>
    %459 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %460 = llvm.insertvalue %451, %459[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %458, %460[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.insertvalue %462, %461[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %437, %463[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %438, %464[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %439, %465[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %440, %466[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %443, %467[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %442, %468[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %440, %469[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %441, %470[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%472 : i64)
  ^bb43(%475: i64):  // 2 preds: ^bb42, ^bb53
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%477 : i64)
  ^bb45(%480: i64):  // 2 preds: ^bb44, ^bb52
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%482 : i64)
  ^bb47(%485: i64):  // 2 preds: ^bb46, ^bb51
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%487 : i64)
  ^bb49(%490: i64):  // 2 preds: ^bb48, ^bb50
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %492 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.mlir.constant(8 : index) : i64
    %494 = llvm.mul %475, %493  : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mul %480, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mul %485, %498  : i64
    %500 = llvm.add %497, %499  : i64
    %501 = llvm.add %500, %490  : i64
    %502 = llvm.getelementptr %492[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %502 : !llvm.ptr<i32>
    %503 = llvm.add %490, %489  : i64
    llvm.br ^bb49(%503 : i64)
  ^bb51:  // pred: ^bb49
    %504 = llvm.add %485, %484  : i64
    llvm.br ^bb47(%504 : i64)
  ^bb52:  // pred: ^bb47
    %505 = llvm.add %480, %479  : i64
    llvm.br ^bb45(%505 : i64)
  ^bb53:  // pred: ^bb45
    %506 = llvm.add %475, %474  : i64
    llvm.br ^bb43(%506 : i64)
  ^bb54:  // pred: ^bb43
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%507 : i64)
  ^bb55(%510: i64):  // 2 preds: ^bb54, ^bb68
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb56, ^bb69
  ^bb56:  // pred: ^bb55
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(2 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%512 : i64)
  ^bb57(%515: i64):  // 2 preds: ^bb56, ^bb67
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb58, ^bb68
  ^bb58:  // pred: ^bb57
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%517 : i64)
  ^bb59(%520: i64):  // 2 preds: ^bb58, ^bb66
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb60, ^bb67
  ^bb60:  // pred: ^bb59
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%522 : i64)
  ^bb61(%525: i64):  // 2 preds: ^bb60, ^bb65
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb62, ^bb66
  ^bb62:  // pred: ^bb61
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%527 : i64)
  ^bb63(%530: i64):  // 2 preds: ^bb62, ^bb64
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb64, ^bb65
  ^bb64:  // pred: ^bb63
    %532 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %533 = llvm.mlir.constant(8 : index) : i64
    %534 = llvm.mul %510, %533  : i64
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mul %515, %535  : i64
    %537 = llvm.add %534, %536  : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mul %520, %538  : i64
    %540 = llvm.add %537, %539  : i64
    %541 = llvm.mlir.constant(2 : index) : i64
    %542 = llvm.mul %525, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.add %543, %530  : i64
    %545 = llvm.getelementptr %532[%544] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %546 = llvm.load %545 : !llvm.ptr<i32>
    %547 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.mlir.constant(8 : index) : i64
    %549 = llvm.mul %510, %548  : i64
    %550 = llvm.mlir.constant(4 : index) : i64
    %551 = llvm.mul %515, %550  : i64
    %552 = llvm.add %549, %551  : i64
    %553 = llvm.mlir.constant(2 : index) : i64
    %554 = llvm.mul %520, %553  : i64
    %555 = llvm.add %552, %554  : i64
    %556 = llvm.add %555, %530  : i64
    %557 = llvm.getelementptr %547[%556] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %558 = llvm.load %557 : !llvm.ptr<i32>
    %559 = llvm.icmp "slt" %558, %546 : i32
    %560 = llvm.select %559, %558, %546 : i1, i32
    %561 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.mlir.constant(8 : index) : i64
    %563 = llvm.mul %510, %562  : i64
    %564 = llvm.mlir.constant(4 : index) : i64
    %565 = llvm.mul %515, %564  : i64
    %566 = llvm.add %563, %565  : i64
    %567 = llvm.mlir.constant(2 : index) : i64
    %568 = llvm.mul %520, %567  : i64
    %569 = llvm.add %566, %568  : i64
    %570 = llvm.add %569, %530  : i64
    %571 = llvm.getelementptr %561[%570] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %560, %571 : !llvm.ptr<i32>
    %572 = llvm.add %530, %529  : i64
    llvm.br ^bb63(%572 : i64)
  ^bb65:  // pred: ^bb63
    %573 = llvm.add %525, %524  : i64
    llvm.br ^bb61(%573 : i64)
  ^bb66:  // pred: ^bb61
    %574 = llvm.add %520, %519  : i64
    llvm.br ^bb59(%574 : i64)
  ^bb67:  // pred: ^bb59
    %575 = llvm.add %515, %514  : i64
    llvm.br ^bb57(%575 : i64)
  ^bb68:  // pred: ^bb57
    %576 = llvm.add %510, %509  : i64
    llvm.br ^bb55(%576 : i64)
  ^bb69:  // pred: ^bb55
    %577 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %578 = llvm.insertvalue %37, %577[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %579 = llvm.insertvalue %277, %578[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %580 = llvm.insertvalue %471, %579[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %580 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(5 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(4 : i64) : i64
    %115 = llvm.extractvalue %46[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %116 = llvm.getelementptr %92[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %46[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %118 = llvm.getelementptr %93[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.getelementptr %51[%119] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %120 : !llvm.ptr<ptr<i8>>
    %121 = llvm.mlir.constant(4 : i64) : i64
    %122 = llvm.call @omTensorCreateUntyped(%121) : (i64) -> !llvm.ptr<i8>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %126 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%122, %123, %125, %127) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %128 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%122, %128) : (!llvm.ptr<i8>, i64) -> ()
    %129 = llvm.call @omTensorGetShape(%122) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %130 = llvm.call @omTensorGetStrides(%122) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %131 = llvm.mlir.constant(0 : i64) : i64
    %132 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %129[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %130[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %129[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %130[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %129[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %130[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(3 : i64) : i64
    %147 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %129[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %130[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(2 : i64) : i64
    %152 = llvm.getelementptr %51[%151] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %122, %152 : !llvm.ptr<ptr<i8>>
    %153 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %153 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<215 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<215 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

