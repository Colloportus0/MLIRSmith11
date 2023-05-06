module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
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
    %223 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.getelementptr %223[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %225 = llvm.load %224 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.getelementptr %226[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %228 = llvm.load %227 : !llvm.ptr<i64>
    %229 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.getelementptr %229[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %231 = llvm.load %230 : !llvm.ptr<i64>
    %232 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.getelementptr %232[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %234 = llvm.load %233 : !llvm.ptr<i64>
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mul %234, %231  : i64
    %237 = llvm.mul %236, %228  : i64
    %238 = llvm.mul %237, %225  : i64
    %239 = llvm.mlir.null : !llvm.ptr<i32>
    %240 = llvm.getelementptr %239[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %241 = llvm.ptrtoint %240 : !llvm.ptr<i32> to i64
    %242 = llvm.mlir.constant(16 : index) : i64
    %243 = llvm.add %241, %242  : i64
    %244 = llvm.call @malloc(%243) : (i64) -> !llvm.ptr<i8>
    %245 = llvm.bitcast %244 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i32> to i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.sub %242, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.urem %249, %242  : i64
    %251 = llvm.sub %249, %250  : i64
    %252 = llvm.inttoptr %251 : i64 to !llvm.ptr<i32>
    %253 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %254 = llvm.insertvalue %245, %253[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %252, %254[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.insertvalue %256, %255[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %225, %257[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %228, %258[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %231, %259[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %234, %260[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %237, %261[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %236, %262[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %234, %263[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %235, %264[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%266 : i64)
  ^bb13(%268: i64):  // 2 preds: ^bb12, ^bb23
    %269 = llvm.icmp "slt" %268, %225 : i64
    llvm.cond_br %269, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%270 : i64)
  ^bb15(%272: i64):  // 2 preds: ^bb14, ^bb22
    %273 = llvm.icmp "slt" %272, %228 : i64
    llvm.cond_br %273, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%274 : i64)
  ^bb17(%276: i64):  // 2 preds: ^bb16, ^bb21
    %277 = llvm.icmp "slt" %276, %231 : i64
    llvm.cond_br %277, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%278 : i64)
  ^bb19(%280: i64):  // 2 preds: ^bb18, ^bb20
    %281 = llvm.icmp "slt" %280, %234 : i64
    llvm.cond_br %281, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %282 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.add %16, %16  : i64
    %284 = llvm.add %283, %16  : i64
    %285 = llvm.add %284, %16  : i64
    %286 = llvm.getelementptr %282[%285] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %287 = llvm.load %286 : !llvm.ptr<i32>
    %288 = llvm.extractvalue %265[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.extractvalue %265[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.mul %268, %289  : i64
    %291 = llvm.extractvalue %265[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mul %272, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.extractvalue %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.mul %276, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.add %296, %280  : i64
    %298 = llvm.getelementptr %288[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %287, %298 : !llvm.ptr<i32>
    %299 = llvm.add %280, %279  : i64
    llvm.br ^bb19(%299 : i64)
  ^bb21:  // pred: ^bb19
    %300 = llvm.add %276, %275  : i64
    llvm.br ^bb17(%300 : i64)
  ^bb22:  // pred: ^bb17
    %301 = llvm.add %272, %271  : i64
    llvm.br ^bb15(%301 : i64)
  ^bb23:  // pred: ^bb15
    %302 = llvm.add %268, %267  : i64
    llvm.br ^bb13(%302 : i64)
  ^bb24:  // pred: ^bb13
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.null : !llvm.ptr<i64>
    %306 = llvm.getelementptr %305[%303] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i64> to i64
    %308 = llvm.mlir.constant(16 : index) : i64
    %309 = llvm.add %307, %308  : i64
    %310 = llvm.call @malloc(%309) : (i64) -> !llvm.ptr<i8>
    %311 = llvm.bitcast %310 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i64> to i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.sub %308, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.urem %315, %308  : i64
    %317 = llvm.sub %315, %316  : i64
    %318 = llvm.inttoptr %317 : i64 to !llvm.ptr<i64>
    %319 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %320 = llvm.insertvalue %311, %319[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.insertvalue %318, %320[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.insertvalue %322, %321[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %303, %323[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %304, %324[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%326 : i64)
  ^bb25(%329: i64):  // 2 preds: ^bb24, ^bb26
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %331 = llvm.extractvalue %325[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.getelementptr %331[%329] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %17, %332 : !llvm.ptr<i64>
    %333 = llvm.add %329, %328  : i64
    llvm.br ^bb25(%333 : i64)
  ^bb27:  // pred: ^bb25
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.null : !llvm.ptr<i64>
    %337 = llvm.getelementptr %336[%334] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %338 = llvm.ptrtoint %337 : !llvm.ptr<i64> to i64
    %339 = llvm.mlir.constant(16 : index) : i64
    %340 = llvm.add %338, %339  : i64
    %341 = llvm.call @malloc(%340) : (i64) -> !llvm.ptr<i8>
    %342 = llvm.bitcast %341 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %343 = llvm.ptrtoint %342 : !llvm.ptr<i64> to i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.sub %339, %344  : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.urem %346, %339  : i64
    %348 = llvm.sub %346, %347  : i64
    %349 = llvm.inttoptr %348 : i64 to !llvm.ptr<i64>
    %350 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %351 = llvm.insertvalue %342, %350[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.insertvalue %349, %351[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.insertvalue %353, %352[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.insertvalue %334, %354[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.insertvalue %335, %355[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%357 : i64)
  ^bb28(%360: i64):  // 2 preds: ^bb27, ^bb29
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %362 = llvm.extractvalue %325[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.getelementptr %362[%360] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %364 = llvm.load %363 : !llvm.ptr<i64>
    %365 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %366 = llvm.load %365 : !llvm.ptr<i64>
    %367 = llvm.mul %364, %366  : i64
    %368 = llvm.extractvalue %356[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.getelementptr %368[%360] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %367, %369 : !llvm.ptr<i64>
    %370 = llvm.add %360, %359  : i64
    llvm.br ^bb28(%370 : i64)
  ^bb30:  // pred: ^bb28
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.null : !llvm.ptr<i1>
    %374 = llvm.getelementptr %373[%371] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %375 = llvm.ptrtoint %374 : !llvm.ptr<i1> to i64
    %376 = llvm.mlir.constant(16 : index) : i64
    %377 = llvm.add %375, %376  : i64
    %378 = llvm.call @malloc(%377) : (i64) -> !llvm.ptr<i8>
    %379 = llvm.bitcast %378 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i1> to i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.sub %376, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.urem %383, %376  : i64
    %385 = llvm.sub %383, %384  : i64
    %386 = llvm.inttoptr %385 : i64 to !llvm.ptr<i1>
    %387 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %388 = llvm.insertvalue %379, %387[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.insertvalue %386, %388[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.insertvalue %390, %389[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %371, %391[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.insertvalue %372, %392[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(4 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%394 : i64)
  ^bb31(%397: i64):  // 2 preds: ^bb30, ^bb32
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %399 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.getelementptr %399[%397] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %401 = llvm.load %400 : !llvm.ptr<i64>
    %402 = llvm.extractvalue %356[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.getelementptr %402[%397] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %404 = llvm.load %403 : !llvm.ptr<i64>
    %405 = llvm.icmp "eq" %401, %404 : i64
    %406 = llvm.extractvalue %393[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.getelementptr %406[%397] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %405, %407 : !llvm.ptr<i1>
    %408 = llvm.add %397, %396  : i64
    llvm.br ^bb31(%408 : i64)
  ^bb33:  // pred: ^bb31
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
    llvm.br ^bb34(%432 : i64)
  ^bb34(%435: i64):  // 2 preds: ^bb33, ^bb35
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %437 = llvm.extractvalue %393[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.getelementptr %437[%435] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %439 = llvm.load %438 : !llvm.ptr<i1>
    %440 = llvm.extractvalue %325[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.getelementptr %440[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %442 = llvm.load %441 : !llvm.ptr<i64>
    %443 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.getelementptr %443[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %445 = llvm.load %444 : !llvm.ptr<i64>
    %446 = llvm.select %439, %442, %445 : i1, i64
    %447 = llvm.extractvalue %431[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.getelementptr %447[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %446, %448 : !llvm.ptr<i64>
    %449 = llvm.add %435, %434  : i64
    llvm.br ^bb34(%449 : i64)
  ^bb36:  // pred: ^bb34
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.null : !llvm.ptr<i32>
    %456 = llvm.getelementptr %455[%450] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %457 = llvm.ptrtoint %456 : !llvm.ptr<i32> to i64
    %458 = llvm.mlir.constant(16 : index) : i64
    %459 = llvm.add %457, %458  : i64
    %460 = llvm.call @malloc(%459) : (i64) -> !llvm.ptr<i8>
    %461 = llvm.bitcast %460 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %462 = llvm.ptrtoint %461 : !llvm.ptr<i32> to i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.sub %458, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.urem %465, %458  : i64
    %467 = llvm.sub %465, %466  : i64
    %468 = llvm.inttoptr %467 : i64 to !llvm.ptr<i32>
    %469 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %470 = llvm.insertvalue %461, %469[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %468, %470[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.insertvalue %472, %471[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %450, %473[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %451, %474[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %452, %475[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %453, %476[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %451, %477[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %454, %480[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.icmp "sgt" %225, %15 : i64
    %483 = llvm.icmp "sgt" %228, %15 : i64
    %484 = llvm.icmp "sgt" %231, %15 : i64
    %485 = llvm.icmp "sgt" %234, %15 : i64
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%486 : i64)
  ^bb37(%489: i64):  // 2 preds: ^bb36, ^bb47
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%491 : i64)
  ^bb39(%494: i64):  // 2 preds: ^bb38, ^bb46
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%496 : i64)
  ^bb41(%499: i64):  // 2 preds: ^bb40, ^bb45
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%501 : i64)
  ^bb43(%504: i64):  // 2 preds: ^bb42, ^bb44
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %506 = llvm.select %482, %489, %16 : i1, i64
    %507 = llvm.select %483, %494, %16 : i1, i64
    %508 = llvm.select %484, %499, %16 : i1, i64
    %509 = llvm.select %485, %504, %16 : i1, i64
    %510 = llvm.extractvalue %265[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.extractvalue %265[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.mul %506, %511  : i64
    %513 = llvm.extractvalue %265[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.mul %507, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.extractvalue %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.mul %508, %516  : i64
    %518 = llvm.add %515, %517  : i64
    %519 = llvm.add %518, %509  : i64
    %520 = llvm.getelementptr %510[%519] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %521 = llvm.load %520 : !llvm.ptr<i32>
    %522 = llvm.extractvalue %481[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.add %489, %494  : i64
    %524 = llvm.add %523, %499  : i64
    %525 = llvm.add %524, %504  : i64
    %526 = llvm.getelementptr %522[%525] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %521, %526 : !llvm.ptr<i32>
    %527 = llvm.add %504, %503  : i64
    llvm.br ^bb43(%527 : i64)
  ^bb45:  // pred: ^bb43
    %528 = llvm.add %499, %498  : i64
    llvm.br ^bb41(%528 : i64)
  ^bb46:  // pred: ^bb41
    %529 = llvm.add %494, %493  : i64
    llvm.br ^bb39(%529 : i64)
  ^bb47:  // pred: ^bb39
    %530 = llvm.add %489, %488  : i64
    llvm.br ^bb37(%530 : i64)
  ^bb48:  // pred: ^bb37
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mul %234, %231  : i64
    %533 = llvm.mul %532, %228  : i64
    %534 = llvm.mul %533, %225  : i64
    %535 = llvm.mlir.null : !llvm.ptr<i64>
    %536 = llvm.getelementptr %535[%534] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %537 = llvm.ptrtoint %536 : !llvm.ptr<i64> to i64
    %538 = llvm.mlir.constant(16 : index) : i64
    %539 = llvm.add %537, %538  : i64
    %540 = llvm.call @malloc(%539) : (i64) -> !llvm.ptr<i8>
    %541 = llvm.bitcast %540 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %542 = llvm.ptrtoint %541 : !llvm.ptr<i64> to i64
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.sub %538, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.urem %545, %538  : i64
    %547 = llvm.sub %545, %546  : i64
    %548 = llvm.inttoptr %547 : i64 to !llvm.ptr<i64>
    %549 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %550 = llvm.insertvalue %541, %549[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %551 = llvm.insertvalue %548, %550[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.insertvalue %552, %551[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.insertvalue %225, %553[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.insertvalue %228, %554[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.insertvalue %231, %555[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %557 = llvm.insertvalue %234, %556[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.insertvalue %533, %557[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.insertvalue %532, %558[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.insertvalue %234, %559[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.insertvalue %531, %560[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%562 : i64)
  ^bb49(%564: i64):  // 2 preds: ^bb48, ^bb59
    %565 = llvm.icmp "slt" %564, %225 : i64
    llvm.cond_br %565, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%566 : i64)
  ^bb51(%568: i64):  // 2 preds: ^bb50, ^bb58
    %569 = llvm.icmp "slt" %568, %228 : i64
    llvm.cond_br %569, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%570 : i64)
  ^bb53(%572: i64):  // 2 preds: ^bb52, ^bb57
    %573 = llvm.icmp "slt" %572, %231 : i64
    llvm.cond_br %573, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %574 = llvm.mlir.constant(0 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%574 : i64)
  ^bb55(%576: i64):  // 2 preds: ^bb54, ^bb56
    %577 = llvm.icmp "slt" %576, %234 : i64
    llvm.cond_br %577, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %578 = llvm.extractvalue %265[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.extractvalue %265[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.mul %564, %579  : i64
    %581 = llvm.extractvalue %265[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.mul %568, %581  : i64
    %583 = llvm.add %580, %582  : i64
    %584 = llvm.extractvalue %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.mul %572, %584  : i64
    %586 = llvm.add %583, %585  : i64
    %587 = llvm.add %586, %576  : i64
    %588 = llvm.getelementptr %578[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %589 = llvm.load %588 : !llvm.ptr<i32>
    %590 = llvm.sext %589 : i32 to i64
    %591 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.extractvalue %561[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.mul %564, %592  : i64
    %594 = llvm.extractvalue %561[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.mul %568, %594  : i64
    %596 = llvm.add %593, %595  : i64
    %597 = llvm.extractvalue %561[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.mul %572, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.add %599, %576  : i64
    %601 = llvm.getelementptr %591[%600] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %590, %601 : !llvm.ptr<i64>
    %602 = llvm.add %576, %575  : i64
    llvm.br ^bb55(%602 : i64)
  ^bb57:  // pred: ^bb55
    %603 = llvm.add %572, %571  : i64
    llvm.br ^bb53(%603 : i64)
  ^bb58:  // pred: ^bb53
    %604 = llvm.add %568, %567  : i64
    llvm.br ^bb51(%604 : i64)
  ^bb59:  // pred: ^bb51
    %605 = llvm.add %564, %563  : i64
    llvm.br ^bb49(%605 : i64)
  ^bb60:  // pred: ^bb49
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.null : !llvm.ptr<i64>
    %612 = llvm.getelementptr %611[%606] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %613 = llvm.ptrtoint %612 : !llvm.ptr<i64> to i64
    %614 = llvm.mlir.constant(16 : index) : i64
    %615 = llvm.add %613, %614  : i64
    %616 = llvm.call @malloc(%615) : (i64) -> !llvm.ptr<i8>
    %617 = llvm.bitcast %616 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %618 = llvm.ptrtoint %617 : !llvm.ptr<i64> to i64
    %619 = llvm.mlir.constant(1 : index) : i64
    %620 = llvm.sub %614, %619  : i64
    %621 = llvm.add %618, %620  : i64
    %622 = llvm.urem %621, %614  : i64
    %623 = llvm.sub %621, %622  : i64
    %624 = llvm.inttoptr %623 : i64 to !llvm.ptr<i64>
    %625 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %626 = llvm.insertvalue %617, %625[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.insertvalue %624, %626[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.mlir.constant(0 : index) : i64
    %629 = llvm.insertvalue %628, %627[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %606, %629[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.insertvalue %607, %630[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.insertvalue %608, %631[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.insertvalue %609, %632[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.insertvalue %607, %633[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.insertvalue %608, %634[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.insertvalue %609, %635[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.insertvalue %610, %636[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.icmp "sgt" %225, %15 : i64
    %639 = llvm.icmp "sgt" %228, %15 : i64
    %640 = llvm.icmp "sgt" %231, %15 : i64
    %641 = llvm.icmp "sgt" %234, %15 : i64
    %642 = llvm.icmp "sgt" %225, %15 : i64
    %643 = llvm.icmp "sgt" %228, %15 : i64
    %644 = llvm.icmp "sgt" %231, %15 : i64
    %645 = llvm.icmp "sgt" %234, %15 : i64
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%646 : i64)
  ^bb61(%649: i64):  // 2 preds: ^bb60, ^bb71
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%651 : i64)
  ^bb63(%654: i64):  // 2 preds: ^bb62, ^bb70
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%656 : i64)
  ^bb65(%659: i64):  // 2 preds: ^bb64, ^bb69
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %661 = llvm.mlir.constant(0 : index) : i64
    %662 = llvm.mlir.constant(1 : index) : i64
    %663 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%661 : i64)
  ^bb67(%664: i64):  // 2 preds: ^bb66, ^bb68
    %665 = llvm.icmp "slt" %664, %662 : i64
    llvm.cond_br %665, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %666 = llvm.select %638, %649, %16 : i1, i64
    %667 = llvm.select %639, %654, %16 : i1, i64
    %668 = llvm.select %640, %659, %16 : i1, i64
    %669 = llvm.select %641, %664, %16 : i1, i64
    %670 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.extractvalue %561[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.mul %666, %671  : i64
    %673 = llvm.extractvalue %561[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.mul %667, %673  : i64
    %675 = llvm.add %672, %674  : i64
    %676 = llvm.extractvalue %561[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.mul %668, %676  : i64
    %678 = llvm.add %675, %677  : i64
    %679 = llvm.add %678, %669  : i64
    %680 = llvm.getelementptr %670[%679] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %681 = llvm.load %680 : !llvm.ptr<i64>
    %682 = llvm.select %642, %649, %16 : i1, i64
    %683 = llvm.select %643, %654, %16 : i1, i64
    %684 = llvm.select %644, %659, %16 : i1, i64
    %685 = llvm.select %645, %664, %16 : i1, i64
    %686 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.extractvalue %561[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %688 = llvm.mul %682, %687  : i64
    %689 = llvm.extractvalue %561[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %690 = llvm.mul %683, %689  : i64
    %691 = llvm.add %688, %690  : i64
    %692 = llvm.extractvalue %561[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %693 = llvm.mul %684, %692  : i64
    %694 = llvm.add %691, %693  : i64
    %695 = llvm.add %694, %685  : i64
    %696 = llvm.getelementptr %686[%695] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %697 = llvm.load %696 : !llvm.ptr<i64>
    %698 = llvm.icmp "slt" %681, %697 : i64
    %699 = llvm.select %698, %681, %697 : i1, i64
    %700 = llvm.extractvalue %637[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.add %649, %654  : i64
    %702 = llvm.add %701, %659  : i64
    %703 = llvm.add %702, %664  : i64
    %704 = llvm.getelementptr %700[%703] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %699, %704 : !llvm.ptr<i64>
    %705 = llvm.add %664, %663  : i64
    llvm.br ^bb67(%705 : i64)
  ^bb69:  // pred: ^bb67
    %706 = llvm.add %659, %658  : i64
    llvm.br ^bb65(%706 : i64)
  ^bb70:  // pred: ^bb65
    %707 = llvm.add %654, %653  : i64
    llvm.br ^bb63(%707 : i64)
  ^bb71:  // pred: ^bb63
    %708 = llvm.add %649, %648  : i64
    llvm.br ^bb61(%708 : i64)
  ^bb72:  // pred: ^bb61
    %709 = llvm.mlir.constant(1 : index) : i64
    %710 = llvm.mlir.constant(1 : index) : i64
    %711 = llvm.mlir.constant(1 : index) : i64
    %712 = llvm.mlir.constant(1 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    %714 = llvm.mlir.null : !llvm.ptr<i64>
    %715 = llvm.getelementptr %714[%709] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %716 = llvm.ptrtoint %715 : !llvm.ptr<i64> to i64
    %717 = llvm.mlir.constant(16 : index) : i64
    %718 = llvm.add %716, %717  : i64
    %719 = llvm.call @malloc(%718) : (i64) -> !llvm.ptr<i8>
    %720 = llvm.bitcast %719 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %721 = llvm.ptrtoint %720 : !llvm.ptr<i64> to i64
    %722 = llvm.mlir.constant(1 : index) : i64
    %723 = llvm.sub %717, %722  : i64
    %724 = llvm.add %721, %723  : i64
    %725 = llvm.urem %724, %717  : i64
    %726 = llvm.sub %724, %725  : i64
    %727 = llvm.inttoptr %726 : i64 to !llvm.ptr<i64>
    %728 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %729 = llvm.insertvalue %720, %728[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %730 = llvm.insertvalue %727, %729[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %731 = llvm.mlir.constant(0 : index) : i64
    %732 = llvm.insertvalue %731, %730[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %733 = llvm.insertvalue %709, %732[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %734 = llvm.insertvalue %710, %733[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.insertvalue %711, %734[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %736 = llvm.insertvalue %712, %735[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %737 = llvm.insertvalue %710, %736[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %738 = llvm.insertvalue %711, %737[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.insertvalue %712, %738[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.insertvalue %713, %739[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.mlir.constant(0 : index) : i64
    %742 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%741 : i64)
  ^bb73(%743: i64):  // 2 preds: ^bb72, ^bb83
    %744 = llvm.icmp "slt" %743, %225 : i64
    llvm.cond_br %744, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %745 = llvm.mlir.constant(0 : index) : i64
    %746 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%745 : i64)
  ^bb75(%747: i64):  // 2 preds: ^bb74, ^bb82
    %748 = llvm.icmp "slt" %747, %228 : i64
    llvm.cond_br %748, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %749 = llvm.mlir.constant(0 : index) : i64
    %750 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%749 : i64)
  ^bb77(%751: i64):  // 2 preds: ^bb76, ^bb81
    %752 = llvm.icmp "slt" %751, %231 : i64
    llvm.cond_br %752, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %753 = llvm.mlir.constant(0 : index) : i64
    %754 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%753 : i64)
  ^bb79(%755: i64):  // 2 preds: ^bb78, ^bb80
    %756 = llvm.icmp "slt" %755, %234 : i64
    llvm.cond_br %756, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %757 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %758 = llvm.extractvalue %561[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %759 = llvm.mul %743, %758  : i64
    %760 = llvm.extractvalue %561[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %761 = llvm.mul %747, %760  : i64
    %762 = llvm.add %759, %761  : i64
    %763 = llvm.extractvalue %561[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %764 = llvm.mul %751, %763  : i64
    %765 = llvm.add %762, %764  : i64
    %766 = llvm.add %765, %755  : i64
    %767 = llvm.getelementptr %757[%766] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %768 = llvm.load %767 : !llvm.ptr<i64>
    %769 = llvm.sub %12, %768  : i64
    %770 = llvm.extractvalue %740[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %771 = llvm.add %743, %747  : i64
    %772 = llvm.add %771, %751  : i64
    %773 = llvm.add %772, %755  : i64
    %774 = llvm.getelementptr %770[%773] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %769, %774 : !llvm.ptr<i64>
    %775 = llvm.add %755, %754  : i64
    llvm.br ^bb79(%775 : i64)
  ^bb81:  // pred: ^bb79
    %776 = llvm.add %751, %750  : i64
    llvm.br ^bb77(%776 : i64)
  ^bb82:  // pred: ^bb77
    %777 = llvm.add %747, %746  : i64
    llvm.br ^bb75(%777 : i64)
  ^bb83:  // pred: ^bb75
    %778 = llvm.add %743, %742  : i64
    llvm.br ^bb73(%778 : i64)
  ^bb84:  // pred: ^bb73
    %779 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %780 = llvm.insertvalue %481, %779[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %781 = llvm.insertvalue %637, %780[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %782 = llvm.insertvalue %740, %781[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %782 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

