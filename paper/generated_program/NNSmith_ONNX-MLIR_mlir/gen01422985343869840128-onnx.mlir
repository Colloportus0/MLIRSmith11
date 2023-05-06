module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v0_0"]} {
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
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(4 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %48 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.extractvalue %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %60, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %61, %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.null : !llvm.ptr<i32>
    %90 = llvm.getelementptr %89[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %91 = llvm.ptrtoint %90 : !llvm.ptr<i32> to i64
    %92 = llvm.mlir.constant(16 : index) : i64
    %93 = llvm.add %91, %92  : i64
    %94 = llvm.call @malloc(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.bitcast %94 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %96 = llvm.ptrtoint %95 : !llvm.ptr<i32> to i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.sub %92, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.urem %99, %92  : i64
    %101 = llvm.sub %99, %100  : i64
    %102 = llvm.inttoptr %101 : i64 to !llvm.ptr<i32>
    %103 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %104 = llvm.insertvalue %95, %103[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %82, %107[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %83, %108[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %84, %109[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %85, %110[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %87, %111[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %84, %112[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %85, %113[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %86, %114[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%116 : i64)
  ^bb1(%119: i64):  // 2 preds: ^bb0, ^bb11
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%121 : i64)
  ^bb3(%124: i64):  // 2 preds: ^bb2, ^bb10
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%126 : i64)
  ^bb5(%129: i64):  // 2 preds: ^bb4, ^bb9
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%131 : i64)
  ^bb7(%134: i64):  // 2 preds: ^bb6, ^bb8
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %136 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %119, %137  : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %124, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.add %141, %129  : i64
    %143 = llvm.add %142, %134  : i64
    %144 = llvm.getelementptr %136[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %147 = llvm.load %146 : !llvm.ptr<i32>
    %148 = llvm.icmp "slt" %145, %147 : i32
    %149 = llvm.select %148, %147, %145 : i1, i32
    %150 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.icmp "slt" %149, %151 : i32
    %153 = llvm.select %152, %149, %151 : i1, i32
    %154 = llvm.extractvalue %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %119, %155  : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %124, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %129  : i64
    %161 = llvm.add %160, %134  : i64
    %162 = llvm.getelementptr %154[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %153, %162 : !llvm.ptr<i32>
    %163 = llvm.add %134, %133  : i64
    llvm.br ^bb7(%163 : i64)
  ^bb9:  // pred: ^bb7
    %164 = llvm.add %129, %128  : i64
    llvm.br ^bb5(%164 : i64)
  ^bb10:  // pred: ^bb5
    %165 = llvm.add %124, %123  : i64
    llvm.br ^bb3(%165 : i64)
  ^bb11:  // pred: ^bb3
    %166 = llvm.add %119, %118  : i64
    llvm.br ^bb1(%166 : i64)
  ^bb12:  // pred: ^bb1
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(4 : index) : i64
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mlir.null : !llvm.ptr<i1>
    %177 = llvm.getelementptr %176[%175] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %178 = llvm.ptrtoint %177 : !llvm.ptr<i1> to i64
    %179 = llvm.mlir.constant(16 : index) : i64
    %180 = llvm.add %178, %179  : i64
    %181 = llvm.call @malloc(%180) : (i64) -> !llvm.ptr<i8>
    %182 = llvm.bitcast %181 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<i1> to i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.sub %179, %184  : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.urem %186, %179  : i64
    %188 = llvm.sub %186, %187  : i64
    %189 = llvm.inttoptr %188 : i64 to !llvm.ptr<i1>
    %190 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %191 = llvm.insertvalue %182, %190[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %192 = llvm.insertvalue %189, %191[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.insertvalue %193, %192[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %195 = llvm.insertvalue %167, %194[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %196 = llvm.insertvalue %168, %195[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %197 = llvm.insertvalue %169, %196[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %198 = llvm.insertvalue %170, %197[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %199 = llvm.insertvalue %171, %198[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %200 = llvm.insertvalue %174, %199[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %201 = llvm.insertvalue %173, %200[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %202 = llvm.insertvalue %170, %201[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %203 = llvm.insertvalue %171, %202[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %204 = llvm.insertvalue %172, %203[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%205 : i64)
  ^bb13(%208: i64):  // 2 preds: ^bb12, ^bb26
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%210 : i64)
  ^bb15(%213: i64):  // 2 preds: ^bb14, ^bb25
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%215 : i64)
  ^bb17(%218: i64):  // 2 preds: ^bb16, ^bb24
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%220 : i64)
  ^bb19(%223: i64):  // 2 preds: ^bb18, ^bb23
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%225 : i64)
  ^bb21(%228: i64):  // 2 preds: ^bb20, ^bb22
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %230 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mul %208, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %213, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.add %235, %218  : i64
    %237 = llvm.add %236, %15  : i64
    %238 = llvm.add %237, %228  : i64
    %239 = llvm.getelementptr %230[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %240 = llvm.load %239 : !llvm.ptr<i32>
    %241 = llvm.extractvalue %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %213, %242  : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mul %15, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.add %246, %223  : i64
    %248 = llvm.add %247, %228  : i64
    %249 = llvm.getelementptr %241[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %250 = llvm.load %249 : !llvm.ptr<i32>
    %251 = llvm.icmp "slt" %240, %250 : i32
    %252 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mul %208, %253  : i64
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mul %213, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %218, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.add %260, %223  : i64
    %262 = llvm.add %261, %228  : i64
    %263 = llvm.getelementptr %252[%262] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %251, %263 : !llvm.ptr<i1>
    %264 = llvm.add %228, %227  : i64
    llvm.br ^bb21(%264 : i64)
  ^bb23:  // pred: ^bb21
    %265 = llvm.add %223, %222  : i64
    llvm.br ^bb19(%265 : i64)
  ^bb24:  // pred: ^bb19
    %266 = llvm.add %218, %217  : i64
    llvm.br ^bb17(%266 : i64)
  ^bb25:  // pred: ^bb17
    %267 = llvm.add %213, %212  : i64
    llvm.br ^bb15(%267 : i64)
  ^bb26:  // pred: ^bb15
    %268 = llvm.add %208, %207  : i64
    llvm.br ^bb13(%268 : i64)
  ^bb27:  // pred: ^bb13
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.null : !llvm.ptr<i64>
    %272 = llvm.getelementptr %271[%269] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i64> to i64
    %274 = llvm.mlir.constant(16 : index) : i64
    %275 = llvm.add %273, %274  : i64
    %276 = llvm.call @malloc(%275) : (i64) -> !llvm.ptr<i8>
    %277 = llvm.bitcast %276 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i64> to i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.sub %274, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.urem %281, %274  : i64
    %283 = llvm.sub %281, %282  : i64
    %284 = llvm.inttoptr %283 : i64 to !llvm.ptr<i64>
    %285 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %286 = llvm.insertvalue %277, %285[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %284, %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.insertvalue %288, %287[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %269, %289[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.insertvalue %270, %290[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%292 : i64)
  ^bb28(%295: i64):  // 2 preds: ^bb27, ^bb29
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %297 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.getelementptr %297[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %298 : !llvm.ptr<i64>
    %299 = llvm.add %295, %294  : i64
    llvm.br ^bb28(%299 : i64)
  ^bb30:  // pred: ^bb28
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.null : !llvm.ptr<i64>
    %303 = llvm.getelementptr %302[%300] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %304 = llvm.ptrtoint %303 : !llvm.ptr<i64> to i64
    %305 = llvm.mlir.constant(16 : index) : i64
    %306 = llvm.add %304, %305  : i64
    %307 = llvm.call @malloc(%306) : (i64) -> !llvm.ptr<i8>
    %308 = llvm.bitcast %307 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<i64> to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %305, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.urem %312, %305  : i64
    %314 = llvm.sub %312, %313  : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr<i64>
    %316 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.insertvalue %300, %320[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %301, %321[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(4 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%323 : i64)
  ^bb31(%326: i64):  // 2 preds: ^bb30, ^bb32
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %328 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.getelementptr %328[%326] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %330 = llvm.load %329 : !llvm.ptr<i64>
    %331 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %332 = llvm.load %331 : !llvm.ptr<i64>
    %333 = llvm.mul %330, %332  : i64
    %334 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.getelementptr %334[%326] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %333, %335 : !llvm.ptr<i64>
    %336 = llvm.add %326, %325  : i64
    llvm.br ^bb31(%336 : i64)
  ^bb33:  // pred: ^bb31
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.null : !llvm.ptr<i1>
    %340 = llvm.getelementptr %339[%337] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i1> to i64
    %342 = llvm.mlir.constant(16 : index) : i64
    %343 = llvm.add %341, %342  : i64
    %344 = llvm.call @malloc(%343) : (i64) -> !llvm.ptr<i8>
    %345 = llvm.bitcast %344 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i1> to i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.sub %342, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.urem %349, %342  : i64
    %351 = llvm.sub %349, %350  : i64
    %352 = llvm.inttoptr %351 : i64 to !llvm.ptr<i1>
    %353 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %354 = llvm.insertvalue %345, %353[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.insertvalue %352, %354[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.insertvalue %356, %355[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.insertvalue %337, %357[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.insertvalue %338, %358[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%360 : i64)
  ^bb34(%363: i64):  // 2 preds: ^bb33, ^bb35
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %365 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.getelementptr %365[%363] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %367 = llvm.load %366 : !llvm.ptr<i64>
    %368 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.getelementptr %368[%363] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %370 = llvm.load %369 : !llvm.ptr<i64>
    %371 = llvm.icmp "eq" %367, %370 : i64
    %372 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.getelementptr %372[%363] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %371, %373 : !llvm.ptr<i1>
    %374 = llvm.add %363, %362  : i64
    llvm.br ^bb34(%374 : i64)
  ^bb36:  // pred: ^bb34
    %375 = llvm.mlir.constant(4 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.null : !llvm.ptr<i64>
    %378 = llvm.getelementptr %377[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i64> to i64
    %380 = llvm.mlir.constant(16 : index) : i64
    %381 = llvm.add %379, %380  : i64
    %382 = llvm.call @malloc(%381) : (i64) -> !llvm.ptr<i8>
    %383 = llvm.bitcast %382 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i64> to i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.sub %380, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.urem %387, %380  : i64
    %389 = llvm.sub %387, %388  : i64
    %390 = llvm.inttoptr %389 : i64 to !llvm.ptr<i64>
    %391 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %392 = llvm.insertvalue %383, %391[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.insertvalue %390, %392[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.insertvalue %394, %393[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.insertvalue %375, %395[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.insertvalue %376, %396[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%398 : i64)
  ^bb37(%401: i64):  // 2 preds: ^bb36, ^bb38
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %403 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.getelementptr %403[%401] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %405 = llvm.load %404 : !llvm.ptr<i1>
    %406 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.getelementptr %406[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %408 = llvm.load %407 : !llvm.ptr<i64>
    %409 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.getelementptr %409[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %411 = llvm.load %410 : !llvm.ptr<i64>
    %412 = llvm.select %405, %408, %411 : i1, i64
    %413 = llvm.extractvalue %397[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.getelementptr %413[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %412, %414 : !llvm.ptr<i64>
    %415 = llvm.add %401, %400  : i64
    llvm.br ^bb37(%415 : i64)
  ^bb39:  // pred: ^bb37
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.null : !llvm.ptr<i32>
    %424 = llvm.getelementptr %423[%422] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %425 = llvm.ptrtoint %424 : !llvm.ptr<i32> to i64
    %426 = llvm.mlir.constant(16 : index) : i64
    %427 = llvm.add %425, %426  : i64
    %428 = llvm.call @malloc(%427) : (i64) -> !llvm.ptr<i8>
    %429 = llvm.bitcast %428 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %430 = llvm.ptrtoint %429 : !llvm.ptr<i32> to i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.sub %426, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.urem %433, %426  : i64
    %435 = llvm.sub %433, %434  : i64
    %436 = llvm.inttoptr %435 : i64 to !llvm.ptr<i32>
    %437 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %438 = llvm.insertvalue %429, %437[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %436, %438[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.insertvalue %440, %439[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %416, %441[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %417, %442[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %418, %443[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %419, %444[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %421, %445[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %418, %446[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %419, %447[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %420, %448[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%450 : i64)
  ^bb40(%453: i64):  // 2 preds: ^bb39, ^bb50
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%455 : i64)
  ^bb42(%458: i64):  // 2 preds: ^bb41, ^bb49
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%460 : i64)
  ^bb44(%463: i64):  // 2 preds: ^bb43, ^bb48
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%465 : i64)
  ^bb46(%468: i64):  // 2 preds: ^bb45, ^bb47
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %470 = llvm.extractvalue %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %15, %471  : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mul %15, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.add %475, %463  : i64
    %477 = llvm.add %476, %15  : i64
    %478 = llvm.getelementptr %470[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %479 = llvm.load %478 : !llvm.ptr<i32>
    %480 = llvm.extractvalue %449[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mul %453, %481  : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mul %458, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.add %485, %463  : i64
    %487 = llvm.add %486, %468  : i64
    %488 = llvm.getelementptr %480[%487] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %479, %488 : !llvm.ptr<i32>
    %489 = llvm.add %468, %467  : i64
    llvm.br ^bb46(%489 : i64)
  ^bb48:  // pred: ^bb46
    %490 = llvm.add %463, %462  : i64
    llvm.br ^bb44(%490 : i64)
  ^bb49:  // pred: ^bb44
    %491 = llvm.add %458, %457  : i64
    llvm.br ^bb42(%491 : i64)
  ^bb50:  // pred: ^bb42
    %492 = llvm.add %453, %452  : i64
    llvm.br ^bb40(%492 : i64)
  ^bb51:  // pred: ^bb40
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mlir.constant(4 : index) : i64
    %501 = llvm.mlir.constant(4 : index) : i64
    %502 = llvm.mlir.null : !llvm.ptr<i1>
    %503 = llvm.getelementptr %502[%501] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %504 = llvm.ptrtoint %503 : !llvm.ptr<i1> to i64
    %505 = llvm.mlir.constant(16 : index) : i64
    %506 = llvm.add %504, %505  : i64
    %507 = llvm.call @malloc(%506) : (i64) -> !llvm.ptr<i8>
    %508 = llvm.bitcast %507 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %509 = llvm.ptrtoint %508 : !llvm.ptr<i1> to i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.sub %505, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.urem %512, %505  : i64
    %514 = llvm.sub %512, %513  : i64
    %515 = llvm.inttoptr %514 : i64 to !llvm.ptr<i1>
    %516 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %517 = llvm.insertvalue %508, %516[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %518 = llvm.insertvalue %515, %517[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.insertvalue %519, %518[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %521 = llvm.insertvalue %493, %520[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %522 = llvm.insertvalue %494, %521[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %523 = llvm.insertvalue %495, %522[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %524 = llvm.insertvalue %496, %523[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %525 = llvm.insertvalue %497, %524[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %526 = llvm.insertvalue %500, %525[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %527 = llvm.insertvalue %499, %526[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %528 = llvm.insertvalue %496, %527[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %529 = llvm.insertvalue %497, %528[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %530 = llvm.insertvalue %498, %529[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%531 : i64)
  ^bb52(%534: i64):  // 2 preds: ^bb51, ^bb65
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb53, ^bb66
  ^bb53:  // pred: ^bb52
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%536 : i64)
  ^bb54(%539: i64):  // 2 preds: ^bb53, ^bb64
    %540 = llvm.icmp "slt" %539, %537 : i64
    llvm.cond_br %540, ^bb55, ^bb65
  ^bb55:  // pred: ^bb54
    %541 = llvm.mlir.constant(0 : index) : i64
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%541 : i64)
  ^bb56(%544: i64):  // 2 preds: ^bb55, ^bb63
    %545 = llvm.icmp "slt" %544, %542 : i64
    llvm.cond_br %545, ^bb57, ^bb64
  ^bb57:  // pred: ^bb56
    %546 = llvm.mlir.constant(0 : index) : i64
    %547 = llvm.mlir.constant(2 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%546 : i64)
  ^bb58(%549: i64):  // 2 preds: ^bb57, ^bb62
    %550 = llvm.icmp "slt" %549, %547 : i64
    llvm.cond_br %550, ^bb59, ^bb63
  ^bb59:  // pred: ^bb58
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%551 : i64)
  ^bb60(%554: i64):  // 2 preds: ^bb59, ^bb61
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb61, ^bb62
  ^bb61:  // pred: ^bb60
    %556 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %557 = llvm.mlir.constant(2 : index) : i64
    %558 = llvm.mul %539, %557  : i64
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mul %15, %559  : i64
    %561 = llvm.add %558, %560  : i64
    %562 = llvm.add %561, %549  : i64
    %563 = llvm.add %562, %554  : i64
    %564 = llvm.getelementptr %556[%563] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %565 = llvm.load %564 : !llvm.ptr<i32>
    %566 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %567 = llvm.mlir.constant(2 : index) : i64
    %568 = llvm.mul %534, %567  : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mul %539, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.add %571, %544  : i64
    %573 = llvm.add %572, %15  : i64
    %574 = llvm.add %573, %554  : i64
    %575 = llvm.getelementptr %566[%574] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %576 = llvm.load %575 : !llvm.ptr<i32>
    %577 = llvm.icmp "slt" %565, %576 : i32
    %578 = llvm.extractvalue %530[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %579 = llvm.mlir.constant(4 : index) : i64
    %580 = llvm.mul %534, %579  : i64
    %581 = llvm.mlir.constant(4 : index) : i64
    %582 = llvm.mul %539, %581  : i64
    %583 = llvm.add %580, %582  : i64
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mul %544, %584  : i64
    %586 = llvm.add %583, %585  : i64
    %587 = llvm.add %586, %549  : i64
    %588 = llvm.add %587, %554  : i64
    %589 = llvm.getelementptr %578[%588] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %577, %589 : !llvm.ptr<i1>
    %590 = llvm.add %554, %553  : i64
    llvm.br ^bb60(%590 : i64)
  ^bb62:  // pred: ^bb60
    %591 = llvm.add %549, %548  : i64
    llvm.br ^bb58(%591 : i64)
  ^bb63:  // pred: ^bb58
    %592 = llvm.add %544, %543  : i64
    llvm.br ^bb56(%592 : i64)
  ^bb64:  // pred: ^bb56
    %593 = llvm.add %539, %538  : i64
    llvm.br ^bb54(%593 : i64)
  ^bb65:  // pred: ^bb54
    %594 = llvm.add %534, %533  : i64
    llvm.br ^bb52(%594 : i64)
  ^bb66:  // pred: ^bb52
    %595 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>
    %596 = llvm.insertvalue %204, %595[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %597 = llvm.insertvalue %449, %596[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %598 = llvm.insertvalue %530, %597[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    llvm.return %598 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v0_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.mlir.constant(24 : i64) : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(5 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(4 : i64) : i64
    %90 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.getelementptr %67[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.getelementptr %68[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.getelementptr %58[%94] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %95 : !llvm.ptr<ptr<i8>>
    %96 = llvm.mlir.constant(4 : i64) : i64
    %97 = llvm.call @omTensorCreateUntyped(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %101 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%97, %98, %100, %102) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %103 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%97, %103) : (!llvm.ptr<i8>, i64) -> ()
    %104 = llvm.call @omTensorGetShape(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.call @omTensorGetStrides(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.mlir.constant(0 : i64) : i64
    %107 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %104[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %105[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %104[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %105[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(2 : i64) : i64
    %117 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %104[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %105[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(3 : i64) : i64
    %122 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %104[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %105[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.getelementptr %58[%126] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %97, %127 : !llvm.ptr<ptr<i8>>
    %128 = llvm.mlir.constant(5 : i64) : i64
    %129 = llvm.call @omTensorCreateUntyped(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.mlir.constant(1 : i64) : i64
    %131 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %132 = llvm.bitcast %131 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %133 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %134 = llvm.bitcast %133 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%129, %130, %132, %134) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %135 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%129, %135) : (!llvm.ptr<i8>, i64) -> ()
    %136 = llvm.call @omTensorGetShape(%129) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %137 = llvm.call @omTensorGetStrides(%129) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.mlir.constant(0 : i64) : i64
    %139 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %140 = llvm.getelementptr %136[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %142 = llvm.getelementptr %137[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(1 : i64) : i64
    %144 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %145 = llvm.getelementptr %136[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %147 = llvm.getelementptr %137[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(2 : i64) : i64
    %149 = llvm.extractvalue %54[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %150 = llvm.getelementptr %136[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %54[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.getelementptr %137[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(3 : i64) : i64
    %154 = llvm.extractvalue %54[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %155 = llvm.getelementptr %136[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %54[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %157 = llvm.getelementptr %137[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(4 : i64) : i64
    %159 = llvm.extractvalue %54[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.getelementptr %136[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %54[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %162 = llvm.getelementptr %137[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(2 : i64) : i64
    %164 = llvm.getelementptr %58[%163] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %129, %164 : !llvm.ptr<ptr<i8>>
    %165 = llvm.call @omTensorListCreate(%58, %55, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %165 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<217 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<217 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

