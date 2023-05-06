module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %24 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.null : !llvm.ptr<f64>
    %44 = llvm.getelementptr %43[%38] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<f64> to i64
    %46 = llvm.mlir.constant(16 : index) : i64
    %47 = llvm.add %45, %46  : i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr<i8>
    %49 = llvm.bitcast %48 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<f64> to i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.sub %46, %51  : i64
    %53 = llvm.add %50, %52  : i64
    %54 = llvm.urem %53, %46  : i64
    %55 = llvm.sub %53, %54  : i64
    %56 = llvm.inttoptr %55 : i64 to !llvm.ptr<f64>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %58 = llvm.insertvalue %49, %57[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %38, %61[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %39, %62[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %40, %63[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %41, %64[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%70 : i64)
  ^bb1(%73: i64):  // 2 preds: ^bb0, ^bb11
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%75 : i64)
  ^bb3(%78: i64):  // 2 preds: ^bb2, ^bb10
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%80 : i64)
  ^bb5(%83: i64):  // 2 preds: ^bb4, ^bb9
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%85 : i64)
  ^bb7(%88: i64):  // 2 preds: ^bb6, ^bb8
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %90 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.add %73, %78  : i64
    %92 = llvm.add %91, %83  : i64
    %93 = llvm.add %92, %88  : i64
    %94 = llvm.getelementptr %90[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.load %94 : !llvm.ptr<i32>
    %96 = llvm.sitofp %95 : i32 to f64
    %97 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.add %73, %78  : i64
    %99 = llvm.add %98, %83  : i64
    %100 = llvm.add %99, %88  : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %96, %101 : !llvm.ptr<f64>
    %102 = llvm.add %88, %87  : i64
    llvm.br ^bb7(%102 : i64)
  ^bb9:  // pred: ^bb7
    %103 = llvm.add %83, %82  : i64
    llvm.br ^bb5(%103 : i64)
  ^bb10:  // pred: ^bb5
    %104 = llvm.add %78, %77  : i64
    llvm.br ^bb3(%104 : i64)
  ^bb11:  // pred: ^bb3
    %105 = llvm.add %73, %72  : i64
    llvm.br ^bb1(%105 : i64)
  ^bb12:  // pred: ^bb1
    %106 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %107 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %107, %106[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %108, %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.insertvalue %113, %112[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.insertvalue %115, %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.insertvalue %117, %116[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.insertvalue %119, %118[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.insertvalue %121, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.insertvalue %123, %122[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.insertvalue %125, %124[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.insertvalue %127, %126[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mlir.null : !llvm.ptr<i32>
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i32> to i64
    %140 = llvm.mlir.constant(16 : index) : i64
    %141 = llvm.add %139, %140  : i64
    %142 = llvm.call @malloc(%141) : (i64) -> !llvm.ptr<i8>
    %143 = llvm.bitcast %142 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %144 = llvm.ptrtoint %143 : !llvm.ptr<i32> to i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.sub %140, %145  : i64
    %147 = llvm.add %144, %146  : i64
    %148 = llvm.urem %147, %140  : i64
    %149 = llvm.sub %147, %148  : i64
    %150 = llvm.inttoptr %149 : i64 to !llvm.ptr<i32>
    %151 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %152 = llvm.insertvalue %143, %151[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %150, %152[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %132, %158[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %135, %159[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %134, %160[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %132, %161[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %133, %162[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%164 : i64)
  ^bb13(%167: i64):  // 2 preds: ^bb12, ^bb23
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%169 : i64)
  ^bb15(%172: i64):  // 2 preds: ^bb14, ^bb22
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%174 : i64)
  ^bb17(%177: i64):  // 2 preds: ^bb16, ^bb21
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%179 : i64)
  ^bb19(%182: i64):  // 2 preds: ^bb18, ^bb20
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %184 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.add %167, %172  : i64
    %186 = llvm.add %185, %177  : i64
    %187 = llvm.add %186, %182  : i64
    %188 = llvm.getelementptr %184[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %189 = llvm.load %188 : !llvm.ptr<i32>
    %190 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %167, %191  : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mul %172, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %177, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.add %198, %182  : i64
    %200 = llvm.getelementptr %190[%199] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %189, %200 : !llvm.ptr<i32>
    %201 = llvm.add %182, %181  : i64
    llvm.br ^bb19(%201 : i64)
  ^bb21:  // pred: ^bb19
    %202 = llvm.add %177, %176  : i64
    llvm.br ^bb17(%202 : i64)
  ^bb22:  // pred: ^bb17
    %203 = llvm.add %172, %171  : i64
    llvm.br ^bb15(%203 : i64)
  ^bb23:  // pred: ^bb15
    %204 = llvm.add %167, %166  : i64
    llvm.br ^bb13(%204 : i64)
  ^bb24:  // pred: ^bb13
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%205 : i64)
  ^bb25(%208: i64):  // 2 preds: ^bb24, ^bb35
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%210 : i64)
  ^bb27(%213: i64):  // 2 preds: ^bb26, ^bb34
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%215 : i64)
  ^bb29(%218: i64):  // 2 preds: ^bb28, ^bb33
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%220 : i64)
  ^bb31(%223: i64):  // 2 preds: ^bb30, ^bb32
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.add %208, %213  : i64
    %229 = llvm.add %228, %218  : i64
    %230 = llvm.add %229, %223  : i64
    %231 = llvm.getelementptr %227[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %232 = llvm.load %231 : !llvm.ptr<i32>
    %233 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mul %208, %234  : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %213, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mul %218, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.add %241, %226  : i64
    %243 = llvm.getelementptr %233[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %232, %243 : !llvm.ptr<i32>
    %244 = llvm.add %223, %222  : i64
    llvm.br ^bb31(%244 : i64)
  ^bb33:  // pred: ^bb31
    %245 = llvm.add %218, %217  : i64
    llvm.br ^bb29(%245 : i64)
  ^bb34:  // pred: ^bb29
    %246 = llvm.add %213, %212  : i64
    llvm.br ^bb27(%246 : i64)
  ^bb35:  // pred: ^bb27
    %247 = llvm.add %208, %207  : i64
    llvm.br ^bb25(%247 : i64)
  ^bb36:  // pred: ^bb25
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mlir.null : !llvm.ptr<i32>
    %257 = llvm.getelementptr %256[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %258 = llvm.ptrtoint %257 : !llvm.ptr<i32> to i64
    %259 = llvm.mlir.constant(16 : index) : i64
    %260 = llvm.add %258, %259  : i64
    %261 = llvm.call @malloc(%260) : (i64) -> !llvm.ptr<i8>
    %262 = llvm.bitcast %261 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i32> to i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.sub %259, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.urem %266, %259  : i64
    %268 = llvm.sub %266, %267  : i64
    %269 = llvm.inttoptr %268 : i64 to !llvm.ptr<i32>
    %270 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %271 = llvm.insertvalue %262, %270[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %269, %271[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.insertvalue %273, %272[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %248, %274[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %249, %275[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %254, %278[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %253, %279[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %251, %280[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %252, %281[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%283 : i64)
  ^bb37(%286: i64):  // 2 preds: ^bb36, ^bb47
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%288 : i64)
  ^bb39(%291: i64):  // 2 preds: ^bb38, ^bb46
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%293 : i64)
  ^bb41(%296: i64):  // 2 preds: ^bb40, ^bb45
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%298 : i64)
  ^bb43(%301: i64):  // 2 preds: ^bb42, ^bb44
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %303 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mul %286, %304  : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mul %291, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mul %296, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.add %311, %301  : i64
    %313 = llvm.getelementptr %303[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %314 = llvm.load %313 : !llvm.ptr<i32>
    %315 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.icmp "slt" %314, %316 : i32
    %318 = llvm.select %317, %316, %314 : i1, i32
    %319 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %320 = llvm.load %319 : !llvm.ptr<i32>
    %321 = llvm.icmp "slt" %318, %320 : i32
    %322 = llvm.select %321, %318, %320 : i1, i32
    %323 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mul %286, %324  : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %291, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mul %296, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.add %331, %301  : i64
    %333 = llvm.getelementptr %323[%332] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %322, %333 : !llvm.ptr<i32>
    %334 = llvm.add %301, %300  : i64
    llvm.br ^bb43(%334 : i64)
  ^bb45:  // pred: ^bb43
    %335 = llvm.add %296, %295  : i64
    llvm.br ^bb41(%335 : i64)
  ^bb46:  // pred: ^bb41
    %336 = llvm.add %291, %290  : i64
    llvm.br ^bb39(%336 : i64)
  ^bb47:  // pred: ^bb39
    %337 = llvm.add %286, %285  : i64
    llvm.br ^bb37(%337 : i64)
  ^bb48:  // pred: ^bb37
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mlir.null : !llvm.ptr<i1>
    %347 = llvm.getelementptr %346[%345] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %348 = llvm.ptrtoint %347 : !llvm.ptr<i1> to i64
    %349 = llvm.mlir.constant(16 : index) : i64
    %350 = llvm.add %348, %349  : i64
    %351 = llvm.call @malloc(%350) : (i64) -> !llvm.ptr<i8>
    %352 = llvm.bitcast %351 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %353 = llvm.ptrtoint %352 : !llvm.ptr<i1> to i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.sub %349, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.urem %356, %349  : i64
    %358 = llvm.sub %356, %357  : i64
    %359 = llvm.inttoptr %358 : i64 to !llvm.ptr<i1>
    %360 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %361 = llvm.insertvalue %352, %360[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %359, %361[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.insertvalue %363, %362[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %338, %364[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %339, %365[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %340, %366[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %341, %367[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %344, %368[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %343, %369[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %341, %370[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %342, %371[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%373 : i64)
  ^bb49(%376: i64):  // 2 preds: ^bb48, ^bb59
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%378 : i64)
  ^bb51(%381: i64):  // 2 preds: ^bb50, ^bb58
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%383 : i64)
  ^bb53(%386: i64):  // 2 preds: ^bb52, ^bb57
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%388 : i64)
  ^bb55(%391: i64):  // 2 preds: ^bb54, ^bb56
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %393 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mul %376, %394  : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %381, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mul %386, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.add %401, %391  : i64
    %403 = llvm.getelementptr %393[%402] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %404 = llvm.load %403 : !llvm.ptr<i32>
    %405 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mul %376, %406  : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mul %381, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mul %386, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.add %413, %391  : i64
    %415 = llvm.getelementptr %405[%414] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %416 = llvm.load %415 : !llvm.ptr<i32>
    %417 = llvm.icmp "eq" %404, %416 : i32
    %418 = llvm.extractvalue %372[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mul %376, %419  : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mul %381, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mul %386, %424  : i64
    %426 = llvm.add %423, %425  : i64
    %427 = llvm.add %426, %391  : i64
    %428 = llvm.getelementptr %418[%427] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %417, %428 : !llvm.ptr<i1>
    %429 = llvm.add %391, %390  : i64
    llvm.br ^bb55(%429 : i64)
  ^bb57:  // pred: ^bb55
    %430 = llvm.add %386, %385  : i64
    llvm.br ^bb53(%430 : i64)
  ^bb58:  // pred: ^bb53
    %431 = llvm.add %381, %380  : i64
    llvm.br ^bb51(%431 : i64)
  ^bb59:  // pred: ^bb51
    %432 = llvm.add %376, %375  : i64
    llvm.br ^bb49(%432 : i64)
  ^bb60:  // pred: ^bb49
    %433 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %434 = llvm.insertvalue %69, %433[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %435 = llvm.insertvalue %372, %434[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %435 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

