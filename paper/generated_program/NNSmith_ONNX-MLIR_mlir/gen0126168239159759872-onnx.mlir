module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<5.47737741> : tensor<1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f32>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_1(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<4.55150604> : tensor<1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x f32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0"]} {
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
    %13 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x f32>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x f32>>> to !llvm.ptr<f32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i32>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %43 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x f32>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<1 x f32>> to !llvm.ptr<f32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.null : !llvm.ptr<f32>
    %60 = llvm.getelementptr %59[%54] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<f32> to i64
    %62 = llvm.mlir.constant(16 : index) : i64
    %63 = llvm.add %61, %62  : i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr<i8>
    %65 = llvm.bitcast %64 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<f32> to i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.sub %62, %67  : i64
    %69 = llvm.add %66, %68  : i64
    %70 = llvm.urem %69, %62  : i64
    %71 = llvm.sub %69, %70  : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr<f32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %65, %73[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %54, %77[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %55, %78[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %56, %79[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %57, %80[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %55, %81[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %56, %82[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %57, %83[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %58, %84[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%86 : i64)
  ^bb1(%89: i64):  // 2 preds: ^bb0, ^bb11
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%91 : i64)
  ^bb3(%94: i64):  // 2 preds: ^bb2, ^bb10
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%96 : i64)
  ^bb5(%99: i64):  // 2 preds: ^bb4, ^bb9
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%101 : i64)
  ^bb7(%104: i64):  // 2 preds: ^bb6, ^bb8
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %106 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.add %89, %94  : i64
    %108 = llvm.add %107, %99  : i64
    %109 = llvm.add %108, %104  : i64
    %110 = llvm.getelementptr %106[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %111 = llvm.load %110 : !llvm.ptr<i32>
    %112 = llvm.sitofp %111 : i32 to f32
    %113 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.add %89, %94  : i64
    %115 = llvm.add %114, %99  : i64
    %116 = llvm.add %115, %104  : i64
    %117 = llvm.getelementptr %113[%116] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %112, %117 : !llvm.ptr<f32>
    %118 = llvm.add %104, %103  : i64
    llvm.br ^bb7(%118 : i64)
  ^bb9:  // pred: ^bb7
    %119 = llvm.add %99, %98  : i64
    llvm.br ^bb5(%119 : i64)
  ^bb10:  // pred: ^bb5
    %120 = llvm.add %94, %93  : i64
    llvm.br ^bb3(%120 : i64)
  ^bb11:  // pred: ^bb3
    %121 = llvm.add %89, %88  : i64
    llvm.br ^bb1(%121 : i64)
  ^bb12:  // pred: ^bb1
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.null : !llvm.ptr<f32>
    %128 = llvm.getelementptr %127[%122] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<f32> to i64
    %130 = llvm.mlir.constant(16 : index) : i64
    %131 = llvm.add %129, %130  : i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<f32> to i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.sub %130, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.urem %137, %130  : i64
    %139 = llvm.sub %137, %138  : i64
    %140 = llvm.inttoptr %139 : i64 to !llvm.ptr<f32>
    %141 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %142 = llvm.insertvalue %133, %141[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %140, %142[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.insertvalue %144, %143[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %122, %145[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %123, %146[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %124, %147[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %125, %148[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %124, %150[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.null : !llvm.ptr<f32>
    %156 = llvm.getelementptr %155[%154] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<f32> to i64
    %158 = llvm.alloca %157 x f32 : (i64) -> !llvm.ptr<f32>
    %159 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64)>
    %160 = llvm.insertvalue %158, %159[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %161 = llvm.insertvalue %158, %160[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.insertvalue %162, %161[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%164 : i64)
  ^bb13(%167: i64):  // 2 preds: ^bb12, ^bb26
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%169 : i64)
  ^bb15(%172: i64):  // 2 preds: ^bb14, ^bb25
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%174 : i64)
  ^bb17(%177: i64):  // 2 preds: ^bb16, ^bb24
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%179 : i64)
  ^bb19(%182: i64):  // 2 preds: ^bb18, ^bb23
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %184 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %13, %184 : !llvm.ptr<f32>
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%185 : i64)
  ^bb21(%188: i64):  // 2 preds: ^bb20, ^bb22
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %190 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.add %167, %172  : i64
    %192 = llvm.add %191, %177  : i64
    %193 = llvm.add %192, %188  : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %195 = llvm.load %194 : !llvm.ptr<f32>
    %196 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %197 = llvm.add %188, %182  : i64
    %198 = llvm.getelementptr %196[%197] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %199 = llvm.load %198 : !llvm.ptr<f32>
    %200 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %201 = llvm.load %200 : !llvm.ptr<f32>
    %202 = llvm.fmul %195, %199  : f32
    %203 = llvm.fadd %201, %202  : f32
    %204 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %203, %204 : !llvm.ptr<f32>
    %205 = llvm.add %188, %187  : i64
    llvm.br ^bb21(%205 : i64)
  ^bb23:  // pred: ^bb21
    %206 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %207 = llvm.load %206 : !llvm.ptr<f32>
    %208 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.add %167, %172  : i64
    %210 = llvm.add %209, %177  : i64
    %211 = llvm.add %210, %182  : i64
    %212 = llvm.getelementptr %208[%211] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %207, %212 : !llvm.ptr<f32>
    %213 = llvm.add %182, %181  : i64
    llvm.br ^bb19(%213 : i64)
  ^bb24:  // pred: ^bb19
    %214 = llvm.add %177, %176  : i64
    llvm.br ^bb17(%214 : i64)
  ^bb25:  // pred: ^bb17
    %215 = llvm.add %172, %171  : i64
    llvm.br ^bb15(%215 : i64)
  ^bb26:  // pred: ^bb15
    %216 = llvm.add %167, %166  : i64
    llvm.br ^bb13(%216 : i64)
  ^bb27:  // pred: ^bb13
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.null : !llvm.ptr<f32>
    %223 = llvm.getelementptr %222[%217] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %224 = llvm.ptrtoint %223 : !llvm.ptr<f32> to i64
    %225 = llvm.mlir.constant(16 : index) : i64
    %226 = llvm.add %224, %225  : i64
    %227 = llvm.call @malloc(%226) : (i64) -> !llvm.ptr<i8>
    %228 = llvm.bitcast %227 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %229 = llvm.ptrtoint %228 : !llvm.ptr<f32> to i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.sub %225, %230  : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.urem %232, %225  : i64
    %234 = llvm.sub %232, %233  : i64
    %235 = llvm.inttoptr %234 : i64 to !llvm.ptr<f32>
    %236 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %237 = llvm.insertvalue %228, %236[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %235, %237[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.insertvalue %239, %238[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %217, %240[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %218, %241[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %219, %242[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %220, %243[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %218, %244[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %219, %245[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %220, %246[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %221, %247[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%249 : i64)
  ^bb28(%252: i64):  // 2 preds: ^bb27, ^bb38
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%254 : i64)
  ^bb30(%257: i64):  // 2 preds: ^bb29, ^bb37
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%259 : i64)
  ^bb32(%262: i64):  // 2 preds: ^bb31, ^bb36
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%264 : i64)
  ^bb34(%267: i64):  // 2 preds: ^bb33, ^bb35
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %269 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.add %252, %257  : i64
    %271 = llvm.add %270, %262  : i64
    %272 = llvm.add %271, %267  : i64
    %273 = llvm.getelementptr %269[%272] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %274 = llvm.load %273 : !llvm.ptr<f32>
    %275 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%267] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %277 = llvm.load %276 : !llvm.ptr<f32>
    %278 = llvm.fadd %274, %277  : f32
    %279 = llvm.extractvalue %248[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.add %252, %257  : i64
    %281 = llvm.add %280, %262  : i64
    %282 = llvm.add %281, %267  : i64
    %283 = llvm.getelementptr %279[%282] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %278, %283 : !llvm.ptr<f32>
    %284 = llvm.add %267, %266  : i64
    llvm.br ^bb34(%284 : i64)
  ^bb36:  // pred: ^bb34
    %285 = llvm.add %262, %261  : i64
    llvm.br ^bb32(%285 : i64)
  ^bb37:  // pred: ^bb32
    %286 = llvm.add %257, %256  : i64
    llvm.br ^bb30(%286 : i64)
  ^bb38:  // pred: ^bb30
    %287 = llvm.add %252, %251  : i64
    llvm.br ^bb28(%287 : i64)
  ^bb39:  // pred: ^bb28
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.null : !llvm.ptr<f32>
    %294 = llvm.getelementptr %293[%288] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<f32> to i64
    %296 = llvm.mlir.constant(16 : index) : i64
    %297 = llvm.add %295, %296  : i64
    %298 = llvm.call @malloc(%297) : (i64) -> !llvm.ptr<i8>
    %299 = llvm.bitcast %298 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<f32> to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %296, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %296  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr<f32>
    %307 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %288, %311[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %289, %312[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %290, %313[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %291, %314[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %289, %315[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %290, %316[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %291, %317[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %292, %318[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%320 : i64)
  ^bb40(%323: i64):  // 2 preds: ^bb39, ^bb50
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%325 : i64)
  ^bb42(%328: i64):  // 2 preds: ^bb41, ^bb49
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%330 : i64)
  ^bb44(%333: i64):  // 2 preds: ^bb43, ^bb48
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%335 : i64)
  ^bb46(%338: i64):  // 2 preds: ^bb45, ^bb47
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %340 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.add %323, %328  : i64
    %342 = llvm.add %341, %333  : i64
    %343 = llvm.add %342, %338  : i64
    %344 = llvm.getelementptr %340[%343] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %345 = llvm.load %344 : !llvm.ptr<f32>
    %346 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.add %323, %328  : i64
    %348 = llvm.add %347, %333  : i64
    %349 = llvm.add %348, %338  : i64
    %350 = llvm.getelementptr %346[%349] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %351 = llvm.load %350 : !llvm.ptr<f32>
    %352 = llvm.fadd %345, %351  : f32
    %353 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.add %323, %328  : i64
    %355 = llvm.add %354, %333  : i64
    %356 = llvm.add %355, %338  : i64
    %357 = llvm.getelementptr %353[%356] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %352, %357 : !llvm.ptr<f32>
    %358 = llvm.add %338, %337  : i64
    llvm.br ^bb46(%358 : i64)
  ^bb48:  // pred: ^bb46
    %359 = llvm.add %333, %332  : i64
    llvm.br ^bb44(%359 : i64)
  ^bb49:  // pred: ^bb44
    %360 = llvm.add %328, %327  : i64
    llvm.br ^bb42(%360 : i64)
  ^bb50:  // pred: ^bb42
    %361 = llvm.add %323, %322  : i64
    llvm.br ^bb40(%361 : i64)
  ^bb51:  // pred: ^bb40
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.null : !llvm.ptr<i32>
    %368 = llvm.getelementptr %367[%362] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %369 = llvm.ptrtoint %368 : !llvm.ptr<i32> to i64
    %370 = llvm.mlir.constant(16 : index) : i64
    %371 = llvm.add %369, %370  : i64
    %372 = llvm.call @malloc(%371) : (i64) -> !llvm.ptr<i8>
    %373 = llvm.bitcast %372 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i32> to i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.sub %370, %375  : i64
    %377 = llvm.add %374, %376  : i64
    %378 = llvm.urem %377, %370  : i64
    %379 = llvm.sub %377, %378  : i64
    %380 = llvm.inttoptr %379 : i64 to !llvm.ptr<i32>
    %381 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %382 = llvm.insertvalue %373, %381[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %380, %382[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.insertvalue %384, %383[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %362, %385[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %363, %386[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %364, %387[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %365, %388[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %363, %389[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %364, %390[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%394 : i64)
  ^bb52(%397: i64):  // 2 preds: ^bb51, ^bb62
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%399 : i64)
  ^bb54(%402: i64):  // 2 preds: ^bb53, ^bb61
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%404 : i64)
  ^bb56(%407: i64):  // 2 preds: ^bb55, ^bb60
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%409 : i64)
  ^bb58(%412: i64):  // 2 preds: ^bb57, ^bb59
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %414 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.add %397, %402  : i64
    %416 = llvm.add %415, %407  : i64
    %417 = llvm.add %416, %412  : i64
    %418 = llvm.getelementptr %414[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %419 = llvm.load %418 : !llvm.ptr<i32>
    %420 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %421 = llvm.load %420 : !llvm.ptr<i32>
    %422 = llvm.icmp "slt" %419, %421 : i32
    %423 = llvm.select %422, %421, %419 : i1, i32
    %424 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %425 = llvm.load %424 : !llvm.ptr<i32>
    %426 = llvm.icmp "slt" %423, %425 : i32
    %427 = llvm.select %426, %423, %425 : i1, i32
    %428 = llvm.extractvalue %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.add %397, %402  : i64
    %430 = llvm.add %429, %407  : i64
    %431 = llvm.add %430, %412  : i64
    %432 = llvm.getelementptr %428[%431] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %427, %432 : !llvm.ptr<i32>
    %433 = llvm.add %412, %411  : i64
    llvm.br ^bb58(%433 : i64)
  ^bb60:  // pred: ^bb58
    %434 = llvm.add %407, %406  : i64
    llvm.br ^bb56(%434 : i64)
  ^bb61:  // pred: ^bb56
    %435 = llvm.add %402, %401  : i64
    llvm.br ^bb54(%435 : i64)
  ^bb62:  // pred: ^bb54
    %436 = llvm.add %397, %396  : i64
    llvm.br ^bb52(%436 : i64)
  ^bb63:  // pred: ^bb52
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.null : !llvm.ptr<i32>
    %442 = llvm.getelementptr %441[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %443 = llvm.ptrtoint %442 : !llvm.ptr<i32> to i64
    %444 = llvm.mlir.constant(16 : index) : i64
    %445 = llvm.add %443, %444  : i64
    %446 = llvm.call @malloc(%445) : (i64) -> !llvm.ptr<i8>
    %447 = llvm.bitcast %446 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %448 = llvm.ptrtoint %447 : !llvm.ptr<i32> to i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.sub %444, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.urem %451, %444  : i64
    %453 = llvm.sub %451, %452  : i64
    %454 = llvm.inttoptr %453 : i64 to !llvm.ptr<i32>
    %455 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %456 = llvm.insertvalue %447, %455[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %457 = llvm.insertvalue %454, %456[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.insertvalue %458, %457[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %460 = llvm.insertvalue %437, %459[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %461 = llvm.insertvalue %438, %460[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %462 = llvm.insertvalue %439, %461[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %463 = llvm.insertvalue %438, %462[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %464 = llvm.insertvalue %439, %463[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %465 = llvm.insertvalue %440, %464[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%466 : i64)
  ^bb64(%469: i64):  // 2 preds: ^bb63, ^bb71
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb65, ^bb72
  ^bb65:  // pred: ^bb64
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%471 : i64)
  ^bb66(%474: i64):  // 2 preds: ^bb65, ^bb70
    %475 = llvm.icmp "slt" %474, %472 : i64
    llvm.cond_br %475, ^bb67, ^bb71
  ^bb67:  // pred: ^bb66
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%476 : i64)
  ^bb68(%479: i64):  // 2 preds: ^bb67, ^bb69
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    %481 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %482 = llvm.add %469, %474  : i64
    %483 = llvm.add %482, %479  : i64
    %484 = llvm.getelementptr %481[%483] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %484 : !llvm.ptr<i32>
    %485 = llvm.add %479, %478  : i64
    llvm.br ^bb68(%485 : i64)
  ^bb70:  // pred: ^bb68
    %486 = llvm.add %474, %473  : i64
    llvm.br ^bb66(%486 : i64)
  ^bb71:  // pred: ^bb66
    %487 = llvm.add %469, %468  : i64
    llvm.br ^bb64(%487 : i64)
  ^bb72:  // pred: ^bb64
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%488 : i64)
  ^bb73(%491: i64):  // 2 preds: ^bb72, ^bb83
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%493 : i64)
  ^bb75(%496: i64):  // 2 preds: ^bb74, ^bb82
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%498 : i64)
  ^bb77(%501: i64):  // 2 preds: ^bb76, ^bb81
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%503 : i64)
  ^bb79(%506: i64):  // 2 preds: ^bb78, ^bb80
    %507 = llvm.icmp "slt" %506, %504 : i64
    llvm.cond_br %507, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %508 = llvm.extractvalue %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.add %491, %496  : i64
    %510 = llvm.add %509, %501  : i64
    %511 = llvm.add %510, %506  : i64
    %512 = llvm.getelementptr %508[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %513 = llvm.load %512 : !llvm.ptr<i32>
    %514 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.add %491, %501  : i64
    %516 = llvm.add %515, %506  : i64
    %517 = llvm.getelementptr %514[%516] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %518 = llvm.load %517 : !llvm.ptr<i32>
    %519 = llvm.icmp "slt" %518, %513 : i32
    %520 = llvm.select %519, %518, %513 : i1, i32
    %521 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %522 = llvm.add %491, %501  : i64
    %523 = llvm.add %522, %506  : i64
    %524 = llvm.getelementptr %521[%523] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %520, %524 : !llvm.ptr<i32>
    %525 = llvm.add %506, %505  : i64
    llvm.br ^bb79(%525 : i64)
  ^bb81:  // pred: ^bb79
    %526 = llvm.add %501, %500  : i64
    llvm.br ^bb77(%526 : i64)
  ^bb82:  // pred: ^bb77
    %527 = llvm.add %496, %495  : i64
    llvm.br ^bb75(%527 : i64)
  ^bb83:  // pred: ^bb75
    %528 = llvm.add %491, %490  : i64
    llvm.br ^bb73(%528 : i64)
  ^bb84:  // pred: ^bb73
    %529 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %530 = llvm.insertvalue %248, %529[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %531 = llvm.insertvalue %319, %530[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %532 = llvm.insertvalue %465, %531[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %532 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

