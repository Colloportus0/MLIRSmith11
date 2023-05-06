module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(3 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : i64) : i64
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
    %58 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %65 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(4 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(4 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.null : !llvm.ptr<i64>
    %79 = llvm.getelementptr %78[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.ptrtoint %79 : !llvm.ptr<i64> to i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.add %80, %81  : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<i64> to i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.sub %81, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.urem %88, %81  : i64
    %90 = llvm.sub %88, %89  : i64
    %91 = llvm.inttoptr %90 : i64 to !llvm.ptr<i64>
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %93 = llvm.insertvalue %84, %92[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %76, %96[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %77, %97[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(4 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%99 : i64)
  ^bb1(%102: i64):  // 2 preds: ^bb0, ^bb2
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %104 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.getelementptr %104[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %17, %105 : !llvm.ptr<i64>
    %106 = llvm.add %102, %101  : i64
    llvm.br ^bb1(%106 : i64)
  ^bb3:  // pred: ^bb1
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.null : !llvm.ptr<i64>
    %110 = llvm.getelementptr %109[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %111 = llvm.ptrtoint %110 : !llvm.ptr<i64> to i64
    %112 = llvm.mlir.constant(16 : index) : i64
    %113 = llvm.add %111, %112  : i64
    %114 = llvm.call @malloc(%113) : (i64) -> !llvm.ptr<i8>
    %115 = llvm.bitcast %114 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %116 = llvm.ptrtoint %115 : !llvm.ptr<i64> to i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.sub %112, %117  : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.urem %119, %112  : i64
    %121 = llvm.sub %119, %120  : i64
    %122 = llvm.inttoptr %121 : i64 to !llvm.ptr<i64>
    %123 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %124 = llvm.insertvalue %115, %123[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %122, %124[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.insertvalue %126, %125[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %107, %127[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.insertvalue %108, %128[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(4 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%130 : i64)
  ^bb4(%133: i64):  // 2 preds: ^bb3, ^bb5
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %135 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.getelementptr %135[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %137 = llvm.load %136 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %139 = llvm.load %138 : !llvm.ptr<i64>
    %140 = llvm.mul %137, %139  : i64
    %141 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %142 : !llvm.ptr<i64>
    %143 = llvm.add %133, %132  : i64
    llvm.br ^bb4(%143 : i64)
  ^bb6:  // pred: ^bb4
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.null : !llvm.ptr<i1>
    %147 = llvm.getelementptr %146[%144] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i1> to i64
    %149 = llvm.mlir.constant(16 : index) : i64
    %150 = llvm.add %148, %149  : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i1> to i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.sub %149, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.urem %156, %149  : i64
    %158 = llvm.sub %156, %157  : i64
    %159 = llvm.inttoptr %158 : i64 to !llvm.ptr<i1>
    %160 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %161 = llvm.insertvalue %152, %160[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.insertvalue %163, %162[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %144, %164[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %145, %165[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(4 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%167 : i64)
  ^bb7(%170: i64):  // 2 preds: ^bb6, ^bb8
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %172 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.getelementptr %172[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %174 = llvm.load %173 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.getelementptr %175[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.load %176 : !llvm.ptr<i64>
    %178 = llvm.icmp "eq" %174, %177 : i64
    %179 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.getelementptr %179[%170] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %178, %180 : !llvm.ptr<i1>
    %181 = llvm.add %170, %169  : i64
    llvm.br ^bb7(%181 : i64)
  ^bb9:  // pred: ^bb7
    %182 = llvm.mlir.constant(4 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.null : !llvm.ptr<i64>
    %185 = llvm.getelementptr %184[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %186 = llvm.ptrtoint %185 : !llvm.ptr<i64> to i64
    %187 = llvm.mlir.constant(16 : index) : i64
    %188 = llvm.add %186, %187  : i64
    %189 = llvm.call @malloc(%188) : (i64) -> !llvm.ptr<i8>
    %190 = llvm.bitcast %189 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %191 = llvm.ptrtoint %190 : !llvm.ptr<i64> to i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.sub %187, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.urem %194, %187  : i64
    %196 = llvm.sub %194, %195  : i64
    %197 = llvm.inttoptr %196 : i64 to !llvm.ptr<i64>
    %198 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %199 = llvm.insertvalue %190, %198[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %197, %199[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.insertvalue %201, %200[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %182, %202[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %183, %203[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%205 : i64)
  ^bb10(%208: i64):  // 2 preds: ^bb9, ^bb11
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %210 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.getelementptr %210[%208] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %212 = llvm.load %211 : !llvm.ptr<i1>
    %213 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.getelementptr %213[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %215 = llvm.load %214 : !llvm.ptr<i64>
    %216 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.getelementptr %216[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %218 = llvm.load %217 : !llvm.ptr<i64>
    %219 = llvm.select %212, %215, %218 : i1, i64
    %220 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.getelementptr %220[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %221 : !llvm.ptr<i64>
    %222 = llvm.add %208, %207  : i64
    llvm.br ^bb10(%222 : i64)
  ^bb12:  // pred: ^bb10
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.null : !llvm.ptr<i32>
    %229 = llvm.getelementptr %228[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.ptrtoint %229 : !llvm.ptr<i32> to i64
    %231 = llvm.mlir.constant(16 : index) : i64
    %232 = llvm.add %230, %231  : i64
    %233 = llvm.call @malloc(%232) : (i64) -> !llvm.ptr<i8>
    %234 = llvm.bitcast %233 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %235 = llvm.ptrtoint %234 : !llvm.ptr<i32> to i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.sub %231, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.urem %238, %231  : i64
    %240 = llvm.sub %238, %239  : i64
    %241 = llvm.inttoptr %240 : i64 to !llvm.ptr<i32>
    %242 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %243 = llvm.insertvalue %234, %242[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %241, %243[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.insertvalue %245, %244[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %223, %246[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %224, %247[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %225, %248[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %226, %249[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %224, %250[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %225, %251[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %226, %252[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %227, %253[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%255 : i64)
  ^bb13(%258: i64):  // 2 preds: ^bb12, ^bb23
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%260 : i64)
  ^bb15(%263: i64):  // 2 preds: ^bb14, ^bb22
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%265 : i64)
  ^bb17(%268: i64):  // 2 preds: ^bb16, ^bb21
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%270 : i64)
  ^bb19(%273: i64):  // 2 preds: ^bb18, ^bb20
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %275 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.add %16, %16  : i64
    %277 = llvm.add %276, %16  : i64
    %278 = llvm.add %277, %16  : i64
    %279 = llvm.getelementptr %275[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %280 = llvm.load %279 : !llvm.ptr<i32>
    %281 = llvm.extractvalue %254[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.add %258, %263  : i64
    %283 = llvm.add %282, %268  : i64
    %284 = llvm.add %283, %273  : i64
    %285 = llvm.getelementptr %281[%284] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %280, %285 : !llvm.ptr<i32>
    %286 = llvm.add %273, %272  : i64
    llvm.br ^bb19(%286 : i64)
  ^bb21:  // pred: ^bb19
    %287 = llvm.add %268, %267  : i64
    llvm.br ^bb17(%287 : i64)
  ^bb22:  // pred: ^bb17
    %288 = llvm.add %263, %262  : i64
    llvm.br ^bb15(%288 : i64)
  ^bb23:  // pred: ^bb15
    %289 = llvm.add %258, %257  : i64
    llvm.br ^bb13(%289 : i64)
  ^bb24:  // pred: ^bb13
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.null : !llvm.ptr<i64>
    %293 = llvm.getelementptr %292[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i64> to i64
    %295 = llvm.mlir.constant(16 : index) : i64
    %296 = llvm.add %294, %295  : i64
    %297 = llvm.call @malloc(%296) : (i64) -> !llvm.ptr<i8>
    %298 = llvm.bitcast %297 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %299 = llvm.ptrtoint %298 : !llvm.ptr<i64> to i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.sub %295, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.urem %302, %295  : i64
    %304 = llvm.sub %302, %303  : i64
    %305 = llvm.inttoptr %304 : i64 to !llvm.ptr<i64>
    %306 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %307 = llvm.insertvalue %298, %306[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.insertvalue %305, %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.insertvalue %309, %308[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.insertvalue %290, %310[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.insertvalue %291, %311[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(4 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%313 : i64)
  ^bb25(%316: i64):  // 2 preds: ^bb24, ^bb26
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %318 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.getelementptr %318[%316] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %17, %319 : !llvm.ptr<i64>
    %320 = llvm.add %316, %315  : i64
    llvm.br ^bb25(%320 : i64)
  ^bb27:  // pred: ^bb25
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.null : !llvm.ptr<i64>
    %324 = llvm.getelementptr %323[%321] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %325 = llvm.ptrtoint %324 : !llvm.ptr<i64> to i64
    %326 = llvm.mlir.constant(16 : index) : i64
    %327 = llvm.add %325, %326  : i64
    %328 = llvm.call @malloc(%327) : (i64) -> !llvm.ptr<i8>
    %329 = llvm.bitcast %328 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i64> to i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.sub %326, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.urem %333, %326  : i64
    %335 = llvm.sub %333, %334  : i64
    %336 = llvm.inttoptr %335 : i64 to !llvm.ptr<i64>
    %337 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %338 = llvm.insertvalue %329, %337[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.insertvalue %336, %338[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.insertvalue %340, %339[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.insertvalue %321, %341[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %322, %342[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%344 : i64)
  ^bb28(%347: i64):  // 2 preds: ^bb27, ^bb29
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %349 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.getelementptr %349[%347] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %351 = llvm.load %350 : !llvm.ptr<i64>
    %352 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %353 = llvm.load %352 : !llvm.ptr<i64>
    %354 = llvm.mul %351, %353  : i64
    %355 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.getelementptr %355[%347] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %354, %356 : !llvm.ptr<i64>
    %357 = llvm.add %347, %346  : i64
    llvm.br ^bb28(%357 : i64)
  ^bb30:  // pred: ^bb28
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.null : !llvm.ptr<i1>
    %361 = llvm.getelementptr %360[%358] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i1> to i64
    %363 = llvm.mlir.constant(16 : index) : i64
    %364 = llvm.add %362, %363  : i64
    %365 = llvm.call @malloc(%364) : (i64) -> !llvm.ptr<i8>
    %366 = llvm.bitcast %365 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i1> to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %363, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.urem %370, %363  : i64
    %372 = llvm.sub %370, %371  : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr<i1>
    %374 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.insertvalue %358, %378[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.insertvalue %359, %379[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(4 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%381 : i64)
  ^bb31(%384: i64):  // 2 preds: ^bb30, ^bb32
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %386 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.getelementptr %386[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %388 = llvm.load %387 : !llvm.ptr<i64>
    %389 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %391 = llvm.load %390 : !llvm.ptr<i64>
    %392 = llvm.icmp "eq" %388, %391 : i64
    %393 = llvm.extractvalue %380[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.getelementptr %393[%384] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %392, %394 : !llvm.ptr<i1>
    %395 = llvm.add %384, %383  : i64
    llvm.br ^bb31(%395 : i64)
  ^bb33:  // pred: ^bb31
    %396 = llvm.mlir.constant(4 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.mlir.null : !llvm.ptr<i64>
    %399 = llvm.getelementptr %398[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %400 = llvm.ptrtoint %399 : !llvm.ptr<i64> to i64
    %401 = llvm.mlir.constant(16 : index) : i64
    %402 = llvm.add %400, %401  : i64
    %403 = llvm.call @malloc(%402) : (i64) -> !llvm.ptr<i8>
    %404 = llvm.bitcast %403 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %405 = llvm.ptrtoint %404 : !llvm.ptr<i64> to i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.sub %401, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.urem %408, %401  : i64
    %410 = llvm.sub %408, %409  : i64
    %411 = llvm.inttoptr %410 : i64 to !llvm.ptr<i64>
    %412 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %413 = llvm.insertvalue %404, %412[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %411, %413[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.insertvalue %415, %414[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.insertvalue %396, %416[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.insertvalue %397, %417[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%419 : i64)
  ^bb34(%422: i64):  // 2 preds: ^bb33, ^bb35
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %424 = llvm.extractvalue %380[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.getelementptr %424[%422] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %426 = llvm.load %425 : !llvm.ptr<i1>
    %427 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.getelementptr %427[%422] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %429 = llvm.load %428 : !llvm.ptr<i64>
    %430 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.getelementptr %430[%422] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %432 = llvm.load %431 : !llvm.ptr<i64>
    %433 = llvm.select %426, %429, %432 : i1, i64
    %434 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.getelementptr %434[%422] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %433, %435 : !llvm.ptr<i64>
    %436 = llvm.add %422, %421  : i64
    llvm.br ^bb34(%436 : i64)
  ^bb36:  // pred: ^bb34
    %437 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.getelementptr %437[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %439 = llvm.load %438 : !llvm.ptr<i64>
    %440 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.getelementptr %440[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %442 = llvm.load %441 : !llvm.ptr<i64>
    %443 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.getelementptr %443[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %445 = llvm.load %444 : !llvm.ptr<i64>
    %446 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.getelementptr %446[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %448 = llvm.load %447 : !llvm.ptr<i64>
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mul %448, %445  : i64
    %451 = llvm.mul %450, %442  : i64
    %452 = llvm.mul %451, %439  : i64
    %453 = llvm.mlir.null : !llvm.ptr<i32>
    %454 = llvm.getelementptr %453[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %455 = llvm.ptrtoint %454 : !llvm.ptr<i32> to i64
    %456 = llvm.mlir.constant(16 : index) : i64
    %457 = llvm.add %455, %456  : i64
    %458 = llvm.call @malloc(%457) : (i64) -> !llvm.ptr<i8>
    %459 = llvm.bitcast %458 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %460 = llvm.ptrtoint %459 : !llvm.ptr<i32> to i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.sub %456, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.urem %463, %456  : i64
    %465 = llvm.sub %463, %464  : i64
    %466 = llvm.inttoptr %465 : i64 to !llvm.ptr<i32>
    %467 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %468 = llvm.insertvalue %459, %467[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %466, %468[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.insertvalue %470, %469[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %439, %471[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %442, %472[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %445, %473[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %451, %475[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %448, %477[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %449, %478[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%480 : i64)
  ^bb37(%482: i64):  // 2 preds: ^bb36, ^bb47
    %483 = llvm.icmp "slt" %482, %439 : i64
    llvm.cond_br %483, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%484 : i64)
  ^bb39(%486: i64):  // 2 preds: ^bb38, ^bb46
    %487 = llvm.icmp "slt" %486, %442 : i64
    llvm.cond_br %487, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%488 : i64)
  ^bb41(%490: i64):  // 2 preds: ^bb40, ^bb45
    %491 = llvm.icmp "slt" %490, %445 : i64
    llvm.cond_br %491, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%492 : i64)
  ^bb43(%494: i64):  // 2 preds: ^bb42, ^bb44
    %495 = llvm.icmp "slt" %494, %448 : i64
    llvm.cond_br %495, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %496 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.add %16, %16  : i64
    %498 = llvm.add %497, %16  : i64
    %499 = llvm.add %498, %16  : i64
    %500 = llvm.getelementptr %496[%499] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %501 = llvm.load %500 : !llvm.ptr<i32>
    %502 = llvm.extractvalue %479[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.extractvalue %479[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.mul %482, %503  : i64
    %505 = llvm.extractvalue %479[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.mul %486, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.extractvalue %479[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.mul %490, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.add %510, %494  : i64
    %512 = llvm.getelementptr %502[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %501, %512 : !llvm.ptr<i32>
    %513 = llvm.add %494, %493  : i64
    llvm.br ^bb43(%513 : i64)
  ^bb45:  // pred: ^bb43
    %514 = llvm.add %490, %489  : i64
    llvm.br ^bb41(%514 : i64)
  ^bb46:  // pred: ^bb41
    %515 = llvm.add %486, %485  : i64
    llvm.br ^bb39(%515 : i64)
  ^bb47:  // pred: ^bb39
    %516 = llvm.add %482, %481  : i64
    llvm.br ^bb37(%516 : i64)
  ^bb48:  // pred: ^bb37
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.null : !llvm.ptr<i1>
    %523 = llvm.getelementptr %522[%517] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %524 = llvm.ptrtoint %523 : !llvm.ptr<i1> to i64
    %525 = llvm.mlir.constant(16 : index) : i64
    %526 = llvm.add %524, %525  : i64
    %527 = llvm.call @malloc(%526) : (i64) -> !llvm.ptr<i8>
    %528 = llvm.bitcast %527 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %529 = llvm.ptrtoint %528 : !llvm.ptr<i1> to i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.sub %525, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.urem %532, %525  : i64
    %534 = llvm.sub %532, %533  : i64
    %535 = llvm.inttoptr %534 : i64 to !llvm.ptr<i1>
    %536 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %537 = llvm.insertvalue %528, %536[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.insertvalue %535, %537[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.insertvalue %539, %538[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.insertvalue %517, %540[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %518, %541[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %519, %542[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %520, %543[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %518, %544[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %519, %545[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %520, %546[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %521, %547[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%549 : i64)
  ^bb49(%551: i64):  // 2 preds: ^bb48, ^bb59
    %552 = llvm.icmp "slt" %551, %439 : i64
    llvm.cond_br %552, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%553 : i64)
  ^bb51(%555: i64):  // 2 preds: ^bb50, ^bb58
    %556 = llvm.icmp "slt" %555, %442 : i64
    llvm.cond_br %556, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %557 = llvm.mlir.constant(0 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%557 : i64)
  ^bb53(%559: i64):  // 2 preds: ^bb52, ^bb57
    %560 = llvm.icmp "slt" %559, %445 : i64
    llvm.cond_br %560, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%561 : i64)
  ^bb55(%563: i64):  // 2 preds: ^bb54, ^bb56
    %564 = llvm.icmp "slt" %563, %448 : i64
    llvm.cond_br %564, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %565 = llvm.extractvalue %479[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.extractvalue %479[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mul %551, %566  : i64
    %568 = llvm.extractvalue %479[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.mul %555, %568  : i64
    %570 = llvm.add %567, %569  : i64
    %571 = llvm.extractvalue %479[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mul %559, %571  : i64
    %573 = llvm.add %570, %572  : i64
    %574 = llvm.add %573, %563  : i64
    %575 = llvm.getelementptr %565[%574] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %576 = llvm.load %575 : !llvm.ptr<i32>
    %577 = llvm.icmp "ne" %576, %12 : i32
    %578 = llvm.extractvalue %548[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.add %551, %555  : i64
    %580 = llvm.add %579, %559  : i64
    %581 = llvm.add %580, %563  : i64
    %582 = llvm.getelementptr %578[%581] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %577, %582 : !llvm.ptr<i1>
    %583 = llvm.add %563, %562  : i64
    llvm.br ^bb55(%583 : i64)
  ^bb57:  // pred: ^bb55
    %584 = llvm.add %559, %558  : i64
    llvm.br ^bb53(%584 : i64)
  ^bb58:  // pred: ^bb53
    %585 = llvm.add %555, %554  : i64
    llvm.br ^bb51(%585 : i64)
  ^bb59:  // pred: ^bb51
    %586 = llvm.add %551, %550  : i64
    llvm.br ^bb49(%586 : i64)
  ^bb60:  // pred: ^bb49
    %587 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %588 = llvm.insertvalue %254, %587[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %589 = llvm.insertvalue %548, %588[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %589 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
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
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

