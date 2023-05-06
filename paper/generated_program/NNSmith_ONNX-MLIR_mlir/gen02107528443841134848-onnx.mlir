module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_7(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(4 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %49 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %50 = llvm.bitcast %49 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(4 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x i64>>
    %72 = llvm.bitcast %71 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %78 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<4 x i64>>
    %79 = llvm.bitcast %78 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %80 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %81 = llvm.insertvalue %79, %80[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.insertvalue %79, %81[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.insertvalue %83, %82[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.insertvalue %85, %84[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.null : !llvm.ptr<i32>
    %95 = llvm.getelementptr %94[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %96 = llvm.ptrtoint %95 : !llvm.ptr<i32> to i64
    %97 = llvm.mlir.constant(16 : index) : i64
    %98 = llvm.add %96, %97  : i64
    %99 = llvm.call @malloc(%98) : (i64) -> !llvm.ptr<i8>
    %100 = llvm.bitcast %99 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.sub %97, %102  : i64
    %104 = llvm.add %101, %103  : i64
    %105 = llvm.urem %104, %97  : i64
    %106 = llvm.sub %104, %105  : i64
    %107 = llvm.inttoptr %106 : i64 to !llvm.ptr<i32>
    %108 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %109 = llvm.insertvalue %100, %108[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %89, %112[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %90, %113[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %91, %114[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %92, %115[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %90, %116[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %91, %117[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %92, %118[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%121 : i64)
  ^bb1(%124: i64):  // 2 preds: ^bb0, ^bb11
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%126 : i64)
  ^bb3(%129: i64):  // 2 preds: ^bb2, ^bb10
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%131 : i64)
  ^bb5(%134: i64):  // 2 preds: ^bb4, ^bb9
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%136 : i64)
  ^bb7(%139: i64):  // 2 preds: ^bb6, ^bb8
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %141 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.add %124, %129  : i64
    %143 = llvm.add %142, %134  : i64
    %144 = llvm.add %143, %139  : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.icmp "slt" %146, %148 : i32
    %150 = llvm.select %149, %148, %146 : i1, i32
    %151 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %152 = llvm.load %151 : !llvm.ptr<i32>
    %153 = llvm.icmp "slt" %150, %152 : i32
    %154 = llvm.select %153, %150, %152 : i1, i32
    %155 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.add %124, %129  : i64
    %157 = llvm.add %156, %134  : i64
    %158 = llvm.add %157, %139  : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %154, %159 : !llvm.ptr<i32>
    %160 = llvm.add %139, %138  : i64
    llvm.br ^bb7(%160 : i64)
  ^bb9:  // pred: ^bb7
    %161 = llvm.add %134, %133  : i64
    llvm.br ^bb5(%161 : i64)
  ^bb10:  // pred: ^bb5
    %162 = llvm.add %129, %128  : i64
    llvm.br ^bb3(%162 : i64)
  ^bb11:  // pred: ^bb3
    %163 = llvm.add %124, %123  : i64
    llvm.br ^bb1(%163 : i64)
  ^bb12:  // pred: ^bb1
    %164 = llvm.mlir.constant(4 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.null : !llvm.ptr<i64>
    %167 = llvm.getelementptr %166[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i64> to i64
    %169 = llvm.mlir.constant(16 : index) : i64
    %170 = llvm.add %168, %169  : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i64> to i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.sub %169, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.urem %176, %169  : i64
    %178 = llvm.sub %176, %177  : i64
    %179 = llvm.inttoptr %178 : i64 to !llvm.ptr<i64>
    %180 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %181 = llvm.insertvalue %172, %180[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %164, %184[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %165, %185[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(4 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%187 : i64)
  ^bb13(%190: i64):  // 2 preds: ^bb12, ^bb14
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %192 = llvm.extractvalue %186[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.getelementptr %192[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %193 : !llvm.ptr<i64>
    %194 = llvm.add %190, %189  : i64
    llvm.br ^bb13(%194 : i64)
  ^bb15:  // pred: ^bb13
    %195 = llvm.mlir.constant(4 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.null : !llvm.ptr<i64>
    %198 = llvm.getelementptr %197[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i64> to i64
    %200 = llvm.mlir.constant(16 : index) : i64
    %201 = llvm.add %199, %200  : i64
    %202 = llvm.call @malloc(%201) : (i64) -> !llvm.ptr<i8>
    %203 = llvm.bitcast %202 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<i64> to i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.sub %200, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.urem %207, %200  : i64
    %209 = llvm.sub %207, %208  : i64
    %210 = llvm.inttoptr %209 : i64 to !llvm.ptr<i64>
    %211 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %212 = llvm.insertvalue %203, %211[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %210, %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.insertvalue %214, %213[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.insertvalue %195, %215[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %196, %216[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%218 : i64)
  ^bb16(%221: i64):  // 2 preds: ^bb15, ^bb17
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %223 = llvm.extractvalue %186[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.getelementptr %223[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %225 = llvm.load %224 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %227 = llvm.load %226 : !llvm.ptr<i64>
    %228 = llvm.mul %225, %227  : i64
    %229 = llvm.extractvalue %217[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.getelementptr %229[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %230 : !llvm.ptr<i64>
    %231 = llvm.add %221, %220  : i64
    llvm.br ^bb16(%231 : i64)
  ^bb18:  // pred: ^bb16
    %232 = llvm.mlir.constant(4 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.null : !llvm.ptr<i1>
    %235 = llvm.getelementptr %234[%232] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %236 = llvm.ptrtoint %235 : !llvm.ptr<i1> to i64
    %237 = llvm.mlir.constant(16 : index) : i64
    %238 = llvm.add %236, %237  : i64
    %239 = llvm.call @malloc(%238) : (i64) -> !llvm.ptr<i8>
    %240 = llvm.bitcast %239 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %241 = llvm.ptrtoint %240 : !llvm.ptr<i1> to i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.sub %237, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.urem %244, %237  : i64
    %246 = llvm.sub %244, %245  : i64
    %247 = llvm.inttoptr %246 : i64 to !llvm.ptr<i1>
    %248 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %249 = llvm.insertvalue %240, %248[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %247, %249[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.insertvalue %251, %250[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.insertvalue %232, %252[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %233, %253[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(4 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%255 : i64)
  ^bb19(%258: i64):  // 2 preds: ^bb18, ^bb20
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %260 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%258] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %262 = llvm.load %261 : !llvm.ptr<i64>
    %263 = llvm.extractvalue %217[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%258] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %265 = llvm.load %264 : !llvm.ptr<i64>
    %266 = llvm.icmp "eq" %262, %265 : i64
    %267 = llvm.extractvalue %254[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.getelementptr %267[%258] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %266, %268 : !llvm.ptr<i1>
    %269 = llvm.add %258, %257  : i64
    llvm.br ^bb19(%269 : i64)
  ^bb21:  // pred: ^bb19
    %270 = llvm.mlir.constant(4 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.null : !llvm.ptr<i64>
    %273 = llvm.getelementptr %272[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %274 = llvm.ptrtoint %273 : !llvm.ptr<i64> to i64
    %275 = llvm.mlir.constant(16 : index) : i64
    %276 = llvm.add %274, %275  : i64
    %277 = llvm.call @malloc(%276) : (i64) -> !llvm.ptr<i8>
    %278 = llvm.bitcast %277 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i64> to i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.sub %275, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.urem %282, %275  : i64
    %284 = llvm.sub %282, %283  : i64
    %285 = llvm.inttoptr %284 : i64 to !llvm.ptr<i64>
    %286 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %287 = llvm.insertvalue %278, %286[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.insertvalue %285, %287[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.insertvalue %289, %288[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.insertvalue %270, %290[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.insertvalue %271, %291[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(4 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%293 : i64)
  ^bb22(%296: i64):  // 2 preds: ^bb21, ^bb23
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %298 = llvm.extractvalue %254[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.getelementptr %298[%296] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %300 = llvm.load %299 : !llvm.ptr<i1>
    %301 = llvm.extractvalue %186[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.getelementptr %301[%296] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %303 = llvm.load %302 : !llvm.ptr<i64>
    %304 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.getelementptr %304[%296] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.load %305 : !llvm.ptr<i64>
    %307 = llvm.select %300, %303, %306 : i1, i64
    %308 = llvm.extractvalue %292[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.getelementptr %308[%296] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %307, %309 : !llvm.ptr<i64>
    %310 = llvm.add %296, %295  : i64
    llvm.br ^bb22(%310 : i64)
  ^bb24:  // pred: ^bb22
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.null : !llvm.ptr<i32>
    %317 = llvm.getelementptr %316[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %318 = llvm.ptrtoint %317 : !llvm.ptr<i32> to i64
    %319 = llvm.mlir.constant(16 : index) : i64
    %320 = llvm.add %318, %319  : i64
    %321 = llvm.call @malloc(%320) : (i64) -> !llvm.ptr<i8>
    %322 = llvm.bitcast %321 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i32> to i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.sub %319, %324  : i64
    %326 = llvm.add %323, %325  : i64
    %327 = llvm.urem %326, %319  : i64
    %328 = llvm.sub %326, %327  : i64
    %329 = llvm.inttoptr %328 : i64 to !llvm.ptr<i32>
    %330 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %331 = llvm.insertvalue %322, %330[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %329, %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.insertvalue %333, %332[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %311, %334[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %312, %335[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %313, %336[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %314, %337[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %312, %338[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %313, %339[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %314, %340[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %315, %341[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%343 : i64)
  ^bb25(%346: i64):  // 2 preds: ^bb24, ^bb35
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%348 : i64)
  ^bb27(%351: i64):  // 2 preds: ^bb26, ^bb34
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%353 : i64)
  ^bb29(%356: i64):  // 2 preds: ^bb28, ^bb33
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%358 : i64)
  ^bb31(%361: i64):  // 2 preds: ^bb30, ^bb32
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %363 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.add %15, %15  : i64
    %365 = llvm.add %364, %15  : i64
    %366 = llvm.add %365, %15  : i64
    %367 = llvm.getelementptr %363[%366] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %368 = llvm.load %367 : !llvm.ptr<i32>
    %369 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.add %346, %351  : i64
    %371 = llvm.add %370, %356  : i64
    %372 = llvm.add %371, %361  : i64
    %373 = llvm.getelementptr %369[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %368, %373 : !llvm.ptr<i32>
    %374 = llvm.add %361, %360  : i64
    llvm.br ^bb31(%374 : i64)
  ^bb33:  // pred: ^bb31
    %375 = llvm.add %356, %355  : i64
    llvm.br ^bb29(%375 : i64)
  ^bb34:  // pred: ^bb29
    %376 = llvm.add %351, %350  : i64
    llvm.br ^bb27(%376 : i64)
  ^bb35:  // pred: ^bb27
    %377 = llvm.add %346, %345  : i64
    llvm.br ^bb25(%377 : i64)
  ^bb36:  // pred: ^bb25
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.null : !llvm.ptr<i64>
    %381 = llvm.getelementptr %380[%378] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %382 = llvm.ptrtoint %381 : !llvm.ptr<i64> to i64
    %383 = llvm.mlir.constant(16 : index) : i64
    %384 = llvm.add %382, %383  : i64
    %385 = llvm.call @malloc(%384) : (i64) -> !llvm.ptr<i8>
    %386 = llvm.bitcast %385 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i64> to i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.sub %383, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.urem %390, %383  : i64
    %392 = llvm.sub %390, %391  : i64
    %393 = llvm.inttoptr %392 : i64 to !llvm.ptr<i64>
    %394 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %395 = llvm.insertvalue %386, %394[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.insertvalue %393, %395[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.insertvalue %397, %396[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.insertvalue %378, %398[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.insertvalue %379, %399[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(4 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%401 : i64)
  ^bb37(%404: i64):  // 2 preds: ^bb36, ^bb38
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %406 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.getelementptr %406[%404] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %407 : !llvm.ptr<i64>
    %408 = llvm.add %404, %403  : i64
    llvm.br ^bb37(%408 : i64)
  ^bb39:  // pred: ^bb37
    %409 = llvm.mlir.constant(4 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.null : !llvm.ptr<i64>
    %412 = llvm.getelementptr %411[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %413 = llvm.ptrtoint %412 : !llvm.ptr<i64> to i64
    %414 = llvm.mlir.constant(16 : index) : i64
    %415 = llvm.add %413, %414  : i64
    %416 = llvm.call @malloc(%415) : (i64) -> !llvm.ptr<i8>
    %417 = llvm.bitcast %416 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %418 = llvm.ptrtoint %417 : !llvm.ptr<i64> to i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.sub %414, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.urem %421, %414  : i64
    %423 = llvm.sub %421, %422  : i64
    %424 = llvm.inttoptr %423 : i64 to !llvm.ptr<i64>
    %425 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %426 = llvm.insertvalue %417, %425[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.insertvalue %424, %426[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.insertvalue %428, %427[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.insertvalue %409, %429[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.insertvalue %410, %430[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(4 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%432 : i64)
  ^bb40(%435: i64):  // 2 preds: ^bb39, ^bb41
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %437 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.getelementptr %437[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %439 = llvm.load %438 : !llvm.ptr<i64>
    %440 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %441 = llvm.load %440 : !llvm.ptr<i64>
    %442 = llvm.mul %439, %441  : i64
    %443 = llvm.extractvalue %431[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.getelementptr %443[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %442, %444 : !llvm.ptr<i64>
    %445 = llvm.add %435, %434  : i64
    llvm.br ^bb40(%445 : i64)
  ^bb42:  // pred: ^bb40
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.null : !llvm.ptr<i1>
    %449 = llvm.getelementptr %448[%446] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %450 = llvm.ptrtoint %449 : !llvm.ptr<i1> to i64
    %451 = llvm.mlir.constant(16 : index) : i64
    %452 = llvm.add %450, %451  : i64
    %453 = llvm.call @malloc(%452) : (i64) -> !llvm.ptr<i8>
    %454 = llvm.bitcast %453 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %455 = llvm.ptrtoint %454 : !llvm.ptr<i1> to i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.sub %451, %456  : i64
    %458 = llvm.add %455, %457  : i64
    %459 = llvm.urem %458, %451  : i64
    %460 = llvm.sub %458, %459  : i64
    %461 = llvm.inttoptr %460 : i64 to !llvm.ptr<i1>
    %462 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %463 = llvm.insertvalue %454, %462[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %461, %463[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.insertvalue %465, %464[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.insertvalue %446, %466[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.insertvalue %447, %467[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(4 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%469 : i64)
  ^bb43(%472: i64):  // 2 preds: ^bb42, ^bb44
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %474 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.getelementptr %474[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %476 = llvm.load %475 : !llvm.ptr<i64>
    %477 = llvm.extractvalue %431[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.getelementptr %477[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %479 = llvm.load %478 : !llvm.ptr<i64>
    %480 = llvm.icmp "eq" %476, %479 : i64
    %481 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.getelementptr %481[%472] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %480, %482 : !llvm.ptr<i1>
    %483 = llvm.add %472, %471  : i64
    llvm.br ^bb43(%483 : i64)
  ^bb45:  // pred: ^bb43
    %484 = llvm.mlir.constant(4 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.null : !llvm.ptr<i64>
    %487 = llvm.getelementptr %486[%484] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %488 = llvm.ptrtoint %487 : !llvm.ptr<i64> to i64
    %489 = llvm.mlir.constant(16 : index) : i64
    %490 = llvm.add %488, %489  : i64
    %491 = llvm.call @malloc(%490) : (i64) -> !llvm.ptr<i8>
    %492 = llvm.bitcast %491 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i64> to i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.sub %489, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.urem %496, %489  : i64
    %498 = llvm.sub %496, %497  : i64
    %499 = llvm.inttoptr %498 : i64 to !llvm.ptr<i64>
    %500 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %501 = llvm.insertvalue %492, %500[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %499, %501[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.insertvalue %503, %502[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %505 = llvm.insertvalue %484, %504[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.insertvalue %485, %505[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%507 : i64)
  ^bb46(%510: i64):  // 2 preds: ^bb45, ^bb47
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %512 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.getelementptr %512[%510] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %514 = llvm.load %513 : !llvm.ptr<i1>
    %515 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.getelementptr %515[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %517 = llvm.load %516 : !llvm.ptr<i64>
    %518 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.getelementptr %518[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %520 = llvm.load %519 : !llvm.ptr<i64>
    %521 = llvm.select %514, %517, %520 : i1, i64
    %522 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %521, %523 : !llvm.ptr<i64>
    %524 = llvm.add %510, %509  : i64
    llvm.br ^bb46(%524 : i64)
  ^bb48:  // pred: ^bb46
    %525 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.getelementptr %525[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %527 = llvm.load %526 : !llvm.ptr<i64>
    %528 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.getelementptr %528[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %530 = llvm.load %529 : !llvm.ptr<i64>
    %531 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %532 = llvm.getelementptr %531[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %533 = llvm.load %532 : !llvm.ptr<i64>
    %534 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %535 = llvm.getelementptr %534[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %536 = llvm.load %535 : !llvm.ptr<i64>
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.mul %536, %533  : i64
    %539 = llvm.mul %538, %530  : i64
    %540 = llvm.mul %539, %527  : i64
    %541 = llvm.mlir.null : !llvm.ptr<i32>
    %542 = llvm.getelementptr %541[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %543 = llvm.ptrtoint %542 : !llvm.ptr<i32> to i64
    %544 = llvm.mlir.constant(16 : index) : i64
    %545 = llvm.add %543, %544  : i64
    %546 = llvm.call @malloc(%545) : (i64) -> !llvm.ptr<i8>
    %547 = llvm.bitcast %546 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %548 = llvm.ptrtoint %547 : !llvm.ptr<i32> to i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.sub %544, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.urem %551, %544  : i64
    %553 = llvm.sub %551, %552  : i64
    %554 = llvm.inttoptr %553 : i64 to !llvm.ptr<i32>
    %555 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %556 = llvm.insertvalue %547, %555[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %557 = llvm.insertvalue %554, %556[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.insertvalue %558, %557[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.insertvalue %527, %559[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.insertvalue %530, %560[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.insertvalue %533, %561[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.insertvalue %536, %562[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.insertvalue %539, %563[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.insertvalue %538, %564[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.insertvalue %536, %565[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %537, %566[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%568 : i64)
  ^bb49(%570: i64):  // 2 preds: ^bb48, ^bb59
    %571 = llvm.icmp "slt" %570, %527 : i64
    llvm.cond_br %571, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%572 : i64)
  ^bb51(%574: i64):  // 2 preds: ^bb50, ^bb58
    %575 = llvm.icmp "slt" %574, %530 : i64
    llvm.cond_br %575, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%576 : i64)
  ^bb53(%578: i64):  // 2 preds: ^bb52, ^bb57
    %579 = llvm.icmp "slt" %578, %533 : i64
    llvm.cond_br %579, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%580 : i64)
  ^bb55(%582: i64):  // 2 preds: ^bb54, ^bb56
    %583 = llvm.icmp "slt" %582, %536 : i64
    llvm.cond_br %583, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %584 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.add %15, %15  : i64
    %586 = llvm.add %585, %15  : i64
    %587 = llvm.add %586, %15  : i64
    %588 = llvm.getelementptr %584[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %589 = llvm.load %588 : !llvm.ptr<i32>
    %590 = llvm.extractvalue %567[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.extractvalue %567[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mul %570, %591  : i64
    %593 = llvm.extractvalue %567[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.mul %574, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.extractvalue %567[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.mul %578, %596  : i64
    %598 = llvm.add %595, %597  : i64
    %599 = llvm.add %598, %582  : i64
    %600 = llvm.getelementptr %590[%599] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %589, %600 : !llvm.ptr<i32>
    %601 = llvm.add %582, %581  : i64
    llvm.br ^bb55(%601 : i64)
  ^bb57:  // pred: ^bb55
    %602 = llvm.add %578, %577  : i64
    llvm.br ^bb53(%602 : i64)
  ^bb58:  // pred: ^bb53
    %603 = llvm.add %574, %573  : i64
    llvm.br ^bb51(%603 : i64)
  ^bb59:  // pred: ^bb51
    %604 = llvm.add %570, %569  : i64
    llvm.br ^bb49(%604 : i64)
  ^bb60:  // pred: ^bb49
    %605 = llvm.mlir.constant(1 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.mlir.constant(2 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(2 : index) : i64
    %611 = llvm.mlir.constant(2 : index) : i64
    %612 = llvm.mlir.constant(2 : index) : i64
    %613 = llvm.mlir.null : !llvm.ptr<i32>
    %614 = llvm.getelementptr %613[%612] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %615 = llvm.ptrtoint %614 : !llvm.ptr<i32> to i64
    %616 = llvm.mlir.constant(16 : index) : i64
    %617 = llvm.add %615, %616  : i64
    %618 = llvm.call @malloc(%617) : (i64) -> !llvm.ptr<i8>
    %619 = llvm.bitcast %618 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %620 = llvm.ptrtoint %619 : !llvm.ptr<i32> to i64
    %621 = llvm.mlir.constant(1 : index) : i64
    %622 = llvm.sub %616, %621  : i64
    %623 = llvm.add %620, %622  : i64
    %624 = llvm.urem %623, %616  : i64
    %625 = llvm.sub %623, %624  : i64
    %626 = llvm.inttoptr %625 : i64 to !llvm.ptr<i32>
    %627 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %628 = llvm.insertvalue %619, %627[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.insertvalue %626, %628[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.insertvalue %630, %629[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.insertvalue %605, %631[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.insertvalue %606, %632[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.insertvalue %607, %633[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.insertvalue %608, %634[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.insertvalue %611, %635[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.insertvalue %610, %636[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.insertvalue %608, %637[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.insertvalue %609, %638[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%640 : i64)
  ^bb61(%643: i64):  // 2 preds: ^bb60, ^bb71
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%645 : i64)
  ^bb63(%648: i64):  // 2 preds: ^bb62, ^bb70
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%650 : i64)
  ^bb65(%653: i64):  // 2 preds: ^bb64, ^bb69
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %655 = llvm.mlir.constant(0 : index) : i64
    %656 = llvm.mlir.constant(2 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%655 : i64)
  ^bb67(%658: i64):  // 2 preds: ^bb66, ^bb68
    %659 = llvm.icmp "slt" %658, %656 : i64
    llvm.cond_br %659, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %660 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %661 = llvm.add %15, %15  : i64
    %662 = llvm.add %661, %15  : i64
    %663 = llvm.add %662, %15  : i64
    %664 = llvm.getelementptr %660[%663] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %665 = llvm.load %664 : !llvm.ptr<i32>
    %666 = llvm.extractvalue %567[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.extractvalue %567[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.mul %643, %667  : i64
    %669 = llvm.extractvalue %567[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.mul %648, %669  : i64
    %671 = llvm.add %668, %670  : i64
    %672 = llvm.extractvalue %567[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.mul %653, %672  : i64
    %674 = llvm.add %671, %673  : i64
    %675 = llvm.add %674, %658  : i64
    %676 = llvm.getelementptr %666[%675] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %677 = llvm.load %676 : !llvm.ptr<i32>
    %678 = llvm.icmp "slt" %665, %677 : i32
    %679 = llvm.select %678, %665, %677 : i1, i32
    %680 = llvm.extractvalue %639[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.mlir.constant(2 : index) : i64
    %682 = llvm.mul %643, %681  : i64
    %683 = llvm.mlir.constant(2 : index) : i64
    %684 = llvm.mul %648, %683  : i64
    %685 = llvm.add %682, %684  : i64
    %686 = llvm.mlir.constant(2 : index) : i64
    %687 = llvm.mul %653, %686  : i64
    %688 = llvm.add %685, %687  : i64
    %689 = llvm.add %688, %658  : i64
    %690 = llvm.getelementptr %680[%689] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %679, %690 : !llvm.ptr<i32>
    %691 = llvm.add %658, %657  : i64
    llvm.br ^bb67(%691 : i64)
  ^bb69:  // pred: ^bb67
    %692 = llvm.add %653, %652  : i64
    llvm.br ^bb65(%692 : i64)
  ^bb70:  // pred: ^bb65
    %693 = llvm.add %648, %647  : i64
    llvm.br ^bb63(%693 : i64)
  ^bb71:  // pred: ^bb63
    %694 = llvm.add %643, %642  : i64
    llvm.br ^bb61(%694 : i64)
  ^bb72:  // pred: ^bb61
    %695 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %696 = llvm.insertvalue %342, %695[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %697 = llvm.insertvalue %639, %696[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %697 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0"]} {
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

