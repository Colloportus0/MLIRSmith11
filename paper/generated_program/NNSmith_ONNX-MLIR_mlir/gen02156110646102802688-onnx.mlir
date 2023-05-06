module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(1 : i64) : i64
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(4 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %42 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %54 = llvm.extractvalue %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.insertvalue %54, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.insertvalue %55, %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.insertvalue %60, %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.null : !llvm.ptr<f32>
    %84 = llvm.getelementptr %83[%80] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<f32> to i64
    %86 = llvm.mlir.constant(16 : index) : i64
    %87 = llvm.add %85, %86  : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr<i8>
    %89 = llvm.bitcast %88 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<f32> to i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.sub %86, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.urem %93, %86  : i64
    %95 = llvm.sub %93, %94  : i64
    %96 = llvm.inttoptr %95 : i64 to !llvm.ptr<f32>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %98 = llvm.insertvalue %89, %97[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %80, %101[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %81, %102[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %81, %103[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %82, %104[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%106 : i64)
  ^bb1(%109: i64):  // 2 preds: ^bb0, ^bb5
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%111 : i64)
  ^bb3(%114: i64):  // 2 preds: ^bb2, ^bb4
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %116 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.add %109, %114  : i64
    %118 = llvm.getelementptr %116[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.sitofp %119 : i32 to f32
    %121 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.add %109, %114  : i64
    %123 = llvm.getelementptr %121[%122] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %120, %123 : !llvm.ptr<f32>
    %124 = llvm.add %114, %113  : i64
    llvm.br ^bb3(%124 : i64)
  ^bb5:  // pred: ^bb3
    %125 = llvm.add %109, %108  : i64
    llvm.br ^bb1(%125 : i64)
  ^bb6:  // pred: ^bb1
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.null : !llvm.ptr<i32>
    %133 = llvm.getelementptr %132[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<i32> to i64
    %135 = llvm.mlir.constant(16 : index) : i64
    %136 = llvm.add %134, %135  : i64
    %137 = llvm.call @malloc(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i32> to i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.sub %135, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.urem %142, %135  : i64
    %144 = llvm.sub %142, %143  : i64
    %145 = llvm.inttoptr %144 : i64 to !llvm.ptr<i32>
    %146 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %147 = llvm.insertvalue %138, %146[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %148 = llvm.insertvalue %145, %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.insertvalue %149, %148[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %151 = llvm.insertvalue %126, %150[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.insertvalue %127, %151[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %153 = llvm.insertvalue %128, %152[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %154 = llvm.insertvalue %129, %153[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %155 = llvm.insertvalue %130, %154[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %156 = llvm.insertvalue %127, %155[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %157 = llvm.insertvalue %128, %156[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %158 = llvm.insertvalue %129, %157[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %159 = llvm.insertvalue %130, %158[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.insertvalue %131, %159[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%161 : i64)
  ^bb7(%164: i64):  // 2 preds: ^bb6, ^bb20
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb8, ^bb21
  ^bb8:  // pred: ^bb7
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%166 : i64)
  ^bb9(%169: i64):  // 2 preds: ^bb8, ^bb19
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb10, ^bb20
  ^bb10:  // pred: ^bb9
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%171 : i64)
  ^bb11(%174: i64):  // 2 preds: ^bb10, ^bb18
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb12, ^bb19
  ^bb12:  // pred: ^bb11
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%176 : i64)
  ^bb13(%179: i64):  // 2 preds: ^bb12, ^bb17
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%181 : i64)
  ^bb15(%184: i64):  // 2 preds: ^bb14, ^bb16
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %186 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %187 = llvm.add %179, %184  : i64
    %188 = llvm.getelementptr %186[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %189 = llvm.load %188 : !llvm.ptr<i32>
    %190 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %191 = llvm.add %164, %169  : i64
    %192 = llvm.add %191, %174  : i64
    %193 = llvm.add %192, %179  : i64
    %194 = llvm.add %193, %184  : i64
    %195 = llvm.getelementptr %190[%194] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %196 = llvm.load %195 : !llvm.ptr<i32>
    %197 = llvm.icmp "sgt" %189, %196 : i32
    %198 = llvm.select %197, %189, %196 : i1, i32
    %199 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %200 = llvm.add %164, %169  : i64
    %201 = llvm.add %200, %174  : i64
    %202 = llvm.add %201, %179  : i64
    %203 = llvm.add %202, %184  : i64
    %204 = llvm.getelementptr %199[%203] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %198, %204 : !llvm.ptr<i32>
    %205 = llvm.add %184, %183  : i64
    llvm.br ^bb15(%205 : i64)
  ^bb17:  // pred: ^bb15
    %206 = llvm.add %179, %178  : i64
    llvm.br ^bb13(%206 : i64)
  ^bb18:  // pred: ^bb13
    %207 = llvm.add %174, %173  : i64
    llvm.br ^bb11(%207 : i64)
  ^bb19:  // pred: ^bb11
    %208 = llvm.add %169, %168  : i64
    llvm.br ^bb9(%208 : i64)
  ^bb20:  // pred: ^bb9
    %209 = llvm.add %164, %163  : i64
    llvm.br ^bb7(%209 : i64)
  ^bb21:  // pred: ^bb7
    %210 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %211 = llvm.extractvalue %160[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %212 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %213 = llvm.insertvalue %211, %210[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %212, %213[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.insertvalue %215, %214[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.insertvalue %217, %216[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.insertvalue %219, %218[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.insertvalue %221, %220[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.insertvalue %223, %222[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.insertvalue %225, %224[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.insertvalue %227, %226[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.insertvalue %229, %228[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.insertvalue %231, %230[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.null : !llvm.ptr<i64>
    %236 = llvm.getelementptr %235[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i64> to i64
    %238 = llvm.mlir.constant(16 : index) : i64
    %239 = llvm.add %237, %238  : i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.bitcast %240 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i64> to i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.sub %238, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.urem %245, %238  : i64
    %247 = llvm.sub %245, %246  : i64
    %248 = llvm.inttoptr %247 : i64 to !llvm.ptr<i64>
    %249 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %241, %249[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %248, %250[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %233, %253[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %234, %254[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%256 : i64)
  ^bb22(%259: i64):  // 2 preds: ^bb21, ^bb23
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %261 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %22, %262 : !llvm.ptr<i64>
    %263 = llvm.add %259, %258  : i64
    llvm.br ^bb22(%263 : i64)
  ^bb24:  // pred: ^bb22
    %264 = llvm.mlir.constant(4 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.null : !llvm.ptr<i64>
    %267 = llvm.getelementptr %266[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i64> to i64
    %269 = llvm.mlir.constant(16 : index) : i64
    %270 = llvm.add %268, %269  : i64
    %271 = llvm.call @malloc(%270) : (i64) -> !llvm.ptr<i8>
    %272 = llvm.bitcast %271 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i64> to i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.sub %269, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.urem %276, %269  : i64
    %278 = llvm.sub %276, %277  : i64
    %279 = llvm.inttoptr %278 : i64 to !llvm.ptr<i64>
    %280 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %272, %280[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %264, %284[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %265, %285[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%287 : i64)
  ^bb25(%290: i64):  // 2 preds: ^bb24, ^bb26
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %292 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.getelementptr %292[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %294 = llvm.load %293 : !llvm.ptr<i64>
    %295 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %296 = llvm.load %295 : !llvm.ptr<i64>
    %297 = llvm.mul %294, %296  : i64
    %298 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.getelementptr %298[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %297, %299 : !llvm.ptr<i64>
    %300 = llvm.add %290, %289  : i64
    llvm.br ^bb25(%300 : i64)
  ^bb27:  // pred: ^bb25
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.null : !llvm.ptr<i1>
    %304 = llvm.getelementptr %303[%301] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i1> to i64
    %306 = llvm.mlir.constant(16 : index) : i64
    %307 = llvm.add %305, %306  : i64
    %308 = llvm.call @malloc(%307) : (i64) -> !llvm.ptr<i8>
    %309 = llvm.bitcast %308 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %310 = llvm.ptrtoint %309 : !llvm.ptr<i1> to i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.sub %306, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.urem %313, %306  : i64
    %315 = llvm.sub %313, %314  : i64
    %316 = llvm.inttoptr %315 : i64 to !llvm.ptr<i1>
    %317 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %318 = llvm.insertvalue %309, %317[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %316, %318[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.insertvalue %320, %319[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %301, %321[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(4 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%324 : i64)
  ^bb28(%327: i64):  // 2 preds: ^bb27, ^bb29
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %329 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.getelementptr %329[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.load %330 : !llvm.ptr<i64>
    %332 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.getelementptr %332[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.icmp "eq" %331, %334 : i64
    %336 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%327] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %335, %337 : !llvm.ptr<i1>
    %338 = llvm.add %327, %326  : i64
    llvm.br ^bb28(%338 : i64)
  ^bb30:  // pred: ^bb28
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.null : !llvm.ptr<i64>
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %343 = llvm.ptrtoint %342 : !llvm.ptr<i64> to i64
    %344 = llvm.mlir.constant(16 : index) : i64
    %345 = llvm.add %343, %344  : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr<i8>
    %347 = llvm.bitcast %346 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %348 = llvm.ptrtoint %347 : !llvm.ptr<i64> to i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.sub %344, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.urem %351, %344  : i64
    %353 = llvm.sub %351, %352  : i64
    %354 = llvm.inttoptr %353 : i64 to !llvm.ptr<i64>
    %355 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %356 = llvm.insertvalue %347, %355[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %354, %356[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.insertvalue %358, %357[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.insertvalue %339, %359[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %340, %360[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%362 : i64)
  ^bb31(%365: i64):  // 2 preds: ^bb30, ^bb32
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %367 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%365] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %369 = llvm.load %368 : !llvm.ptr<i1>
    %370 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.getelementptr %373[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %375 = llvm.load %374 : !llvm.ptr<i64>
    %376 = llvm.select %369, %372, %375 : i1, i64
    %377 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %377[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %376, %378 : !llvm.ptr<i64>
    %379 = llvm.add %365, %364  : i64
    llvm.br ^bb31(%379 : i64)
  ^bb33:  // pred: ^bb31
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.null : !llvm.ptr<i32>
    %386 = llvm.getelementptr %385[%380] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i32> to i64
    %388 = llvm.mlir.constant(16 : index) : i64
    %389 = llvm.add %387, %388  : i64
    %390 = llvm.call @malloc(%389) : (i64) -> !llvm.ptr<i8>
    %391 = llvm.bitcast %390 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i32> to i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.sub %388, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.urem %395, %388  : i64
    %397 = llvm.sub %395, %396  : i64
    %398 = llvm.inttoptr %397 : i64 to !llvm.ptr<i32>
    %399 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %400 = llvm.insertvalue %391, %399[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %398, %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.insertvalue %402, %401[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %380, %403[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %381, %404[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %382, %405[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %383, %406[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %381, %407[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %382, %408[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %383, %409[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %384, %410[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%412 : i64)
  ^bb34(%415: i64):  // 2 preds: ^bb33, ^bb44
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%417 : i64)
  ^bb36(%420: i64):  // 2 preds: ^bb35, ^bb43
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%422 : i64)
  ^bb38(%425: i64):  // 2 preds: ^bb37, ^bb42
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%427 : i64)
  ^bb40(%430: i64):  // 2 preds: ^bb39, ^bb41
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %432 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.add %415, %23  : i64
    %434 = llvm.add %433, %23  : i64
    %435 = llvm.add %434, %23  : i64
    %436 = llvm.getelementptr %432[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %437 = llvm.load %436 : !llvm.ptr<i32>
    %438 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.add %415, %420  : i64
    %440 = llvm.add %439, %425  : i64
    %441 = llvm.add %440, %430  : i64
    %442 = llvm.getelementptr %438[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %437, %442 : !llvm.ptr<i32>
    %443 = llvm.add %430, %429  : i64
    llvm.br ^bb40(%443 : i64)
  ^bb42:  // pred: ^bb40
    %444 = llvm.add %425, %424  : i64
    llvm.br ^bb38(%444 : i64)
  ^bb43:  // pred: ^bb38
    %445 = llvm.add %420, %419  : i64
    llvm.br ^bb36(%445 : i64)
  ^bb44:  // pred: ^bb36
    %446 = llvm.add %415, %414  : i64
    llvm.br ^bb34(%446 : i64)
  ^bb45:  // pred: ^bb34
    %447 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %448 = llvm.insertvalue %105, %447[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %449 = llvm.insertvalue %411, %448[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %449 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %77, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %78 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %79 = llvm.extractvalue %78[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %80 = llvm.extractvalue %78[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %81 = llvm.mlir.constant(2 : i64) : i64
    %82 = llvm.mlir.constant(16 : i64) : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.getelementptr %84[%105] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %106 : !llvm.ptr<ptr<i8>>
    %107 = llvm.mlir.constant(4 : i64) : i64
    %108 = llvm.call @omTensorCreateUntyped(%107) : (i64) -> !llvm.ptr<i8>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.extractvalue %80[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.bitcast %110 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %112 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.bitcast %112 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%108, %109, %111, %113) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %114 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%108, %114) : (!llvm.ptr<i8>, i64) -> ()
    %115 = llvm.call @omTensorGetShape(%108) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %116 = llvm.call @omTensorGetStrides(%108) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %117 = llvm.mlir.constant(0 : i64) : i64
    %118 = llvm.extractvalue %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %115[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %116[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(1 : i64) : i64
    %123 = llvm.extractvalue %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %115[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %116[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(2 : i64) : i64
    %128 = llvm.extractvalue %80[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %115[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %80[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %116[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(3 : i64) : i64
    %133 = llvm.extractvalue %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %115[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %116[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(1 : i64) : i64
    %138 = llvm.getelementptr %84[%137] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %108, %138 : !llvm.ptr<ptr<i8>>
    %139 = llvm.call @omTensorListCreate(%84, %81, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %139 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<138 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<138 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

