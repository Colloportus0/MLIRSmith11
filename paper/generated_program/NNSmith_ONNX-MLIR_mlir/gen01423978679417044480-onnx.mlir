module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr<i32>, %arg17: !llvm.ptr<i32>, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %19 = llvm.insertvalue %arg16, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg18, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg20, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg21, %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg22, %27[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.mlir.constant(0 : i64) : i64
    %32 = llvm.mlir.constant(-1 : i64) : i64
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %52 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %64 = llvm.bitcast %63 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.null : !llvm.ptr<i32>
    %95 = llvm.getelementptr %94[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %113 = llvm.insertvalue %86, %112[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %88, %114[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %92, %116[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %91, %117[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %89, %118[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %90, %119[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%136 : i64)
  ^bb7(%139: i64):  // 2 preds: ^bb6, ^bb8
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %141 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.load %142 : !llvm.ptr<i32>
    %144 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.add %124, %129  : i64
    %146 = llvm.add %145, %134  : i64
    %147 = llvm.add %146, %33  : i64
    %148 = llvm.getelementptr %144[%147] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %149 = llvm.load %148 : !llvm.ptr<i32>
    %150 = llvm.add %143, %149  : i32
    %151 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mul %124, %152  : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mul %129, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %134, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %139  : i64
    %161 = llvm.getelementptr %151[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %150, %161 : !llvm.ptr<i32>
    %162 = llvm.add %139, %138  : i64
    llvm.br ^bb7(%162 : i64)
  ^bb9:  // pred: ^bb7
    %163 = llvm.add %134, %133  : i64
    llvm.br ^bb5(%163 : i64)
  ^bb10:  // pred: ^bb5
    %164 = llvm.add %129, %128  : i64
    llvm.br ^bb3(%164 : i64)
  ^bb11:  // pred: ^bb3
    %165 = llvm.add %124, %123  : i64
    llvm.br ^bb1(%165 : i64)
  ^bb12:  // pred: ^bb1
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(4 : index) : i64
    %173 = llvm.mlir.constant(4 : index) : i64
    %174 = llvm.mlir.null : !llvm.ptr<i32>
    %175 = llvm.getelementptr %174[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i32> to i64
    %177 = llvm.mlir.constant(16 : index) : i64
    %178 = llvm.add %176, %177  : i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr<i8>
    %180 = llvm.bitcast %179 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %181 = llvm.ptrtoint %180 : !llvm.ptr<i32> to i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.sub %177, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.urem %184, %177  : i64
    %186 = llvm.sub %184, %185  : i64
    %187 = llvm.inttoptr %186 : i64 to !llvm.ptr<i32>
    %188 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %189 = llvm.insertvalue %180, %188[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %187, %189[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.insertvalue %191, %190[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %167, %193[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %168, %194[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %169, %195[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %172, %196[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %171, %197[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %169, %198[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %170, %199[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%201 : i64)
  ^bb13(%204: i64):  // 2 preds: ^bb12, ^bb23
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%206 : i64)
  ^bb15(%209: i64):  // 2 preds: ^bb14, ^bb22
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%211 : i64)
  ^bb17(%214: i64):  // 2 preds: ^bb16, ^bb21
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%216 : i64)
  ^bb19(%219: i64):  // 2 preds: ^bb18, ^bb20
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %221 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mul %204, %222  : i64
    %224 = llvm.add %223, %209  : i64
    %225 = llvm.add %224, %214  : i64
    %226 = llvm.add %225, %219  : i64
    %227 = llvm.getelementptr %221[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.load %227 : !llvm.ptr<i32>
    %229 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mul %204, %230  : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mul %209, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mul %214, %235  : i64
    %237 = llvm.add %234, %236  : i64
    %238 = llvm.add %237, %219  : i64
    %239 = llvm.getelementptr %229[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %228, %239 : !llvm.ptr<i32>
    %240 = llvm.add %219, %218  : i64
    llvm.br ^bb19(%240 : i64)
  ^bb21:  // pred: ^bb19
    %241 = llvm.add %214, %213  : i64
    llvm.br ^bb17(%241 : i64)
  ^bb22:  // pred: ^bb17
    %242 = llvm.add %209, %208  : i64
    llvm.br ^bb15(%242 : i64)
  ^bb23:  // pred: ^bb15
    %243 = llvm.add %204, %203  : i64
    llvm.br ^bb13(%243 : i64)
  ^bb24:  // pred: ^bb13
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%244 : i64)
  ^bb25(%247: i64):  // 2 preds: ^bb24, ^bb35
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%249 : i64)
  ^bb27(%252: i64):  // 2 preds: ^bb26, ^bb34
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%254 : i64)
  ^bb29(%257: i64):  // 2 preds: ^bb28, ^bb33
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%259 : i64)
  ^bb31(%262: i64):  // 2 preds: ^bb30, ^bb32
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mul %247, %267  : i64
    %269 = llvm.add %268, %252  : i64
    %270 = llvm.add %269, %257  : i64
    %271 = llvm.add %270, %262  : i64
    %272 = llvm.getelementptr %266[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %273 = llvm.load %272 : !llvm.ptr<i32>
    %274 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mul %247, %275  : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mul %252, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mul %257, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %265  : i64
    %284 = llvm.getelementptr %274[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %273, %284 : !llvm.ptr<i32>
    %285 = llvm.add %262, %261  : i64
    llvm.br ^bb31(%285 : i64)
  ^bb33:  // pred: ^bb31
    %286 = llvm.add %257, %256  : i64
    llvm.br ^bb29(%286 : i64)
  ^bb34:  // pred: ^bb29
    %287 = llvm.add %252, %251  : i64
    llvm.br ^bb27(%287 : i64)
  ^bb35:  // pred: ^bb27
    %288 = llvm.add %247, %246  : i64
    llvm.br ^bb25(%288 : i64)
  ^bb36:  // pred: ^bb25
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.null : !llvm.ptr<i64>
    %294 = llvm.getelementptr %293[%289] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i64> to i64
    %296 = llvm.mlir.constant(16 : index) : i64
    %297 = llvm.add %295, %296  : i64
    %298 = llvm.call @malloc(%297) : (i64) -> !llvm.ptr<i8>
    %299 = llvm.bitcast %298 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i64> to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %296, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %296  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr<i64>
    %307 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %312 = llvm.insertvalue %289, %311[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %313 = llvm.insertvalue %290, %312[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.insertvalue %291, %313[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.insertvalue %290, %314[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %316 = llvm.insertvalue %291, %315[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %317 = llvm.insertvalue %292, %316[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%318 : i64)
  ^bb37(%321: i64):  // 2 preds: ^bb36, ^bb44
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%323 : i64)
  ^bb39(%326: i64):  // 2 preds: ^bb38, ^bb43
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%328 : i64)
  ^bb41(%331: i64):  // 2 preds: ^bb40, ^bb42
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %333 = llvm.extractvalue %317[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %334 = llvm.add %321, %326  : i64
    %335 = llvm.add %334, %331  : i64
    %336 = llvm.getelementptr %333[%335] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %32, %336 : !llvm.ptr<i64>
    %337 = llvm.add %331, %330  : i64
    llvm.br ^bb41(%337 : i64)
  ^bb43:  // pred: ^bb41
    %338 = llvm.add %326, %325  : i64
    llvm.br ^bb39(%338 : i64)
  ^bb44:  // pred: ^bb39
    %339 = llvm.add %321, %320  : i64
    llvm.br ^bb37(%339 : i64)
  ^bb45:  // pred: ^bb37
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%340 : i64)
  ^bb46(%343: i64):  // 2 preds: ^bb45, ^bb56
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%345 : i64)
  ^bb48(%348: i64):  // 2 preds: ^bb47, ^bb55
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%350 : i64)
  ^bb50(%353: i64):  // 2 preds: ^bb49, ^bb54
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%355 : i64)
  ^bb52(%358: i64):  // 2 preds: ^bb51, ^bb53
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %360 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mul %343, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %348, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %353, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %358  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %371 = llvm.load %370 : !llvm.ptr<i32>
    %372 = llvm.extractvalue %317[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %373 = llvm.add %343, %348  : i64
    %374 = llvm.add %373, %353  : i64
    %375 = llvm.getelementptr %372[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %376 = llvm.load %375 : !llvm.ptr<i64>
    %377 = llvm.icmp "slt" %376, %31 : i64
    %378 = llvm.select %377, %31, %376 : i1, i64
    %379 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mul %343, %380  : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %348, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mul %353, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.add %387, %378  : i64
    %389 = llvm.getelementptr %379[%388] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %390 = llvm.load %389 : !llvm.ptr<i32>
    %391 = llvm.icmp "sgt" %371, %390 : i32
    %392 = llvm.select %391, %358, %378 : i1, i64
    %393 = llvm.extractvalue %317[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %394 = llvm.add %343, %348  : i64
    %395 = llvm.add %394, %353  : i64
    %396 = llvm.getelementptr %393[%395] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %392, %396 : !llvm.ptr<i64>
    %397 = llvm.add %358, %357  : i64
    llvm.br ^bb52(%397 : i64)
  ^bb54:  // pred: ^bb52
    %398 = llvm.add %353, %352  : i64
    llvm.br ^bb50(%398 : i64)
  ^bb55:  // pred: ^bb50
    %399 = llvm.add %348, %347  : i64
    llvm.br ^bb48(%399 : i64)
  ^bb56:  // pred: ^bb48
    %400 = llvm.add %343, %342  : i64
    llvm.br ^bb46(%400 : i64)
  ^bb57:  // pred: ^bb46
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mlir.null : !llvm.ptr<i32>
    %410 = llvm.getelementptr %409[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %411 = llvm.ptrtoint %410 : !llvm.ptr<i32> to i64
    %412 = llvm.mlir.constant(16 : index) : i64
    %413 = llvm.add %411, %412  : i64
    %414 = llvm.call @malloc(%413) : (i64) -> !llvm.ptr<i8>
    %415 = llvm.bitcast %414 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i32> to i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.sub %412, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.urem %419, %412  : i64
    %421 = llvm.sub %419, %420  : i64
    %422 = llvm.inttoptr %421 : i64 to !llvm.ptr<i32>
    %423 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %424 = llvm.insertvalue %415, %423[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %422, %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.insertvalue %426, %425[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %401, %427[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %402, %428[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %403, %429[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %407, %431[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %404, %433[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %405, %434[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%436 : i64)
  ^bb58(%439: i64):  // 2 preds: ^bb57, ^bb68
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%441 : i64)
  ^bb60(%444: i64):  // 2 preds: ^bb59, ^bb67
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%446 : i64)
  ^bb62(%449: i64):  // 2 preds: ^bb61, ^bb66
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%451 : i64)
  ^bb64(%454: i64):  // 2 preds: ^bb63, ^bb65
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %456 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(4 : index) : i64
    %458 = llvm.mul %439, %457  : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mul %444, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mul %449, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.add %464, %454  : i64
    %466 = llvm.getelementptr %456[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %467 = llvm.load %466 : !llvm.ptr<i32>
    %468 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mul %439, %469  : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %33, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %449, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.add %476, %454  : i64
    %478 = llvm.getelementptr %468[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %479 = llvm.load %478 : !llvm.ptr<i32>
    %480 = llvm.icmp "sgt" %467, %479 : i32
    %481 = llvm.select %480, %467, %479 : i1, i32
    %482 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %439, %483  : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mul %444, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %449, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.add %490, %454  : i64
    %492 = llvm.getelementptr %482[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %481, %492 : !llvm.ptr<i32>
    %493 = llvm.add %454, %453  : i64
    llvm.br ^bb64(%493 : i64)
  ^bb66:  // pred: ^bb64
    %494 = llvm.add %449, %448  : i64
    llvm.br ^bb62(%494 : i64)
  ^bb67:  // pred: ^bb62
    %495 = llvm.add %444, %443  : i64
    llvm.br ^bb60(%495 : i64)
  ^bb68:  // pred: ^bb60
    %496 = llvm.add %439, %438  : i64
    llvm.br ^bb58(%496 : i64)
  ^bb69:  // pred: ^bb58
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.null : !llvm.ptr<i64>
    %500 = llvm.getelementptr %499[%497] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %501 = llvm.ptrtoint %500 : !llvm.ptr<i64> to i64
    %502 = llvm.mlir.constant(16 : index) : i64
    %503 = llvm.add %501, %502  : i64
    %504 = llvm.call @malloc(%503) : (i64) -> !llvm.ptr<i8>
    %505 = llvm.bitcast %504 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %506 = llvm.ptrtoint %505 : !llvm.ptr<i64> to i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.sub %502, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.urem %509, %502  : i64
    %511 = llvm.sub %509, %510  : i64
    %512 = llvm.inttoptr %511 : i64 to !llvm.ptr<i64>
    %513 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %514 = llvm.insertvalue %505, %513[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %512, %514[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.insertvalue %516, %515[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %518 = llvm.insertvalue %497, %517[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.insertvalue %498, %518[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(4 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%520 : i64)
  ^bb70(%523: i64):  // 2 preds: ^bb69, ^bb71
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %525 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.getelementptr %525[%523] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %30, %526 : !llvm.ptr<i64>
    %527 = llvm.add %523, %522  : i64
    llvm.br ^bb70(%527 : i64)
  ^bb72:  // pred: ^bb70
    %528 = llvm.mlir.constant(4 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.null : !llvm.ptr<i64>
    %531 = llvm.getelementptr %530[%528] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %532 = llvm.ptrtoint %531 : !llvm.ptr<i64> to i64
    %533 = llvm.mlir.constant(16 : index) : i64
    %534 = llvm.add %532, %533  : i64
    %535 = llvm.call @malloc(%534) : (i64) -> !llvm.ptr<i8>
    %536 = llvm.bitcast %535 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %537 = llvm.ptrtoint %536 : !llvm.ptr<i64> to i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.sub %533, %538  : i64
    %540 = llvm.add %537, %539  : i64
    %541 = llvm.urem %540, %533  : i64
    %542 = llvm.sub %540, %541  : i64
    %543 = llvm.inttoptr %542 : i64 to !llvm.ptr<i64>
    %544 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %545 = llvm.insertvalue %536, %544[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %546 = llvm.insertvalue %543, %545[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.insertvalue %547, %546[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %549 = llvm.insertvalue %528, %548[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %550 = llvm.insertvalue %529, %549[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(4 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%551 : i64)
  ^bb73(%554: i64):  // 2 preds: ^bb72, ^bb74
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %556 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %557 = llvm.getelementptr %556[%554] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %558 = llvm.load %557 : !llvm.ptr<i64>
    %559 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %560 = llvm.load %559 : !llvm.ptr<i64>
    %561 = llvm.mul %558, %560  : i64
    %562 = llvm.extractvalue %550[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.getelementptr %562[%554] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %561, %563 : !llvm.ptr<i64>
    %564 = llvm.add %554, %553  : i64
    llvm.br ^bb73(%564 : i64)
  ^bb75:  // pred: ^bb73
    %565 = llvm.mlir.constant(4 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.null : !llvm.ptr<i1>
    %568 = llvm.getelementptr %567[%565] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %569 = llvm.ptrtoint %568 : !llvm.ptr<i1> to i64
    %570 = llvm.mlir.constant(16 : index) : i64
    %571 = llvm.add %569, %570  : i64
    %572 = llvm.call @malloc(%571) : (i64) -> !llvm.ptr<i8>
    %573 = llvm.bitcast %572 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %574 = llvm.ptrtoint %573 : !llvm.ptr<i1> to i64
    %575 = llvm.mlir.constant(1 : index) : i64
    %576 = llvm.sub %570, %575  : i64
    %577 = llvm.add %574, %576  : i64
    %578 = llvm.urem %577, %570  : i64
    %579 = llvm.sub %577, %578  : i64
    %580 = llvm.inttoptr %579 : i64 to !llvm.ptr<i1>
    %581 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %582 = llvm.insertvalue %573, %581[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %583 = llvm.insertvalue %580, %582[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.insertvalue %584, %583[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.insertvalue %565, %585[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %587 = llvm.insertvalue %566, %586[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.mlir.constant(0 : index) : i64
    %589 = llvm.mlir.constant(4 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%588 : i64)
  ^bb76(%591: i64):  // 2 preds: ^bb75, ^bb77
    %592 = llvm.icmp "slt" %591, %589 : i64
    llvm.cond_br %592, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %593 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %594 = llvm.getelementptr %593[%591] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %595 = llvm.load %594 : !llvm.ptr<i64>
    %596 = llvm.extractvalue %550[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %597 = llvm.getelementptr %596[%591] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %598 = llvm.load %597 : !llvm.ptr<i64>
    %599 = llvm.icmp "eq" %595, %598 : i64
    %600 = llvm.extractvalue %587[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %601 = llvm.getelementptr %600[%591] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %599, %601 : !llvm.ptr<i1>
    %602 = llvm.add %591, %590  : i64
    llvm.br ^bb76(%602 : i64)
  ^bb78:  // pred: ^bb76
    %603 = llvm.mlir.constant(4 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.mlir.null : !llvm.ptr<i64>
    %606 = llvm.getelementptr %605[%603] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %607 = llvm.ptrtoint %606 : !llvm.ptr<i64> to i64
    %608 = llvm.mlir.constant(16 : index) : i64
    %609 = llvm.add %607, %608  : i64
    %610 = llvm.call @malloc(%609) : (i64) -> !llvm.ptr<i8>
    %611 = llvm.bitcast %610 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %612 = llvm.ptrtoint %611 : !llvm.ptr<i64> to i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.sub %608, %613  : i64
    %615 = llvm.add %612, %614  : i64
    %616 = llvm.urem %615, %608  : i64
    %617 = llvm.sub %615, %616  : i64
    %618 = llvm.inttoptr %617 : i64 to !llvm.ptr<i64>
    %619 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %620 = llvm.insertvalue %611, %619[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %621 = llvm.insertvalue %618, %620[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.insertvalue %622, %621[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %624 = llvm.insertvalue %603, %623[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %625 = llvm.insertvalue %604, %624[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.mlir.constant(4 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%626 : i64)
  ^bb79(%629: i64):  // 2 preds: ^bb78, ^bb80
    %630 = llvm.icmp "slt" %629, %627 : i64
    llvm.cond_br %630, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %631 = llvm.extractvalue %587[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.getelementptr %631[%629] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %633 = llvm.load %632 : !llvm.ptr<i1>
    %634 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.getelementptr %634[%629] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %636 = llvm.load %635 : !llvm.ptr<i64>
    %637 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %638 = llvm.getelementptr %637[%629] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %639 = llvm.load %638 : !llvm.ptr<i64>
    %640 = llvm.select %633, %636, %639 : i1, i64
    %641 = llvm.extractvalue %625[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.getelementptr %641[%629] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %640, %642 : !llvm.ptr<i64>
    %643 = llvm.add %629, %628  : i64
    llvm.br ^bb79(%643 : i64)
  ^bb81:  // pred: ^bb79
    %644 = llvm.mlir.constant(1 : index) : i64
    %645 = llvm.mlir.constant(2 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    %649 = llvm.mlir.constant(2 : index) : i64
    %650 = llvm.mlir.constant(4 : index) : i64
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mlir.null : !llvm.ptr<i32>
    %653 = llvm.getelementptr %652[%651] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %654 = llvm.ptrtoint %653 : !llvm.ptr<i32> to i64
    %655 = llvm.mlir.constant(16 : index) : i64
    %656 = llvm.add %654, %655  : i64
    %657 = llvm.call @malloc(%656) : (i64) -> !llvm.ptr<i8>
    %658 = llvm.bitcast %657 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %659 = llvm.ptrtoint %658 : !llvm.ptr<i32> to i64
    %660 = llvm.mlir.constant(1 : index) : i64
    %661 = llvm.sub %655, %660  : i64
    %662 = llvm.add %659, %661  : i64
    %663 = llvm.urem %662, %655  : i64
    %664 = llvm.sub %662, %663  : i64
    %665 = llvm.inttoptr %664 : i64 to !llvm.ptr<i32>
    %666 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %667 = llvm.insertvalue %658, %666[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.insertvalue %665, %667[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.mlir.constant(0 : index) : i64
    %670 = llvm.insertvalue %669, %668[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.insertvalue %644, %670[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.insertvalue %645, %671[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %646, %672[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.insertvalue %647, %673[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %650, %674[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %649, %675[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %647, %676[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.insertvalue %648, %677[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.mlir.constant(0 : index) : i64
    %680 = llvm.mlir.constant(1 : index) : i64
    %681 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%679 : i64)
  ^bb82(%682: i64):  // 2 preds: ^bb81, ^bb92
    %683 = llvm.icmp "slt" %682, %680 : i64
    llvm.cond_br %683, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %684 = llvm.mlir.constant(0 : index) : i64
    %685 = llvm.mlir.constant(2 : index) : i64
    %686 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%684 : i64)
  ^bb84(%687: i64):  // 2 preds: ^bb83, ^bb91
    %688 = llvm.icmp "slt" %687, %685 : i64
    llvm.cond_br %688, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %689 = llvm.mlir.constant(0 : index) : i64
    %690 = llvm.mlir.constant(1 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%689 : i64)
  ^bb86(%692: i64):  // 2 preds: ^bb85, ^bb90
    %693 = llvm.icmp "slt" %692, %690 : i64
    llvm.cond_br %693, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %694 = llvm.mlir.constant(0 : index) : i64
    %695 = llvm.mlir.constant(2 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%694 : i64)
  ^bb88(%697: i64):  // 2 preds: ^bb87, ^bb89
    %698 = llvm.icmp "slt" %697, %695 : i64
    llvm.cond_br %698, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %699 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.mlir.constant(4 : index) : i64
    %701 = llvm.mul %33, %700  : i64
    %702 = llvm.mlir.constant(2 : index) : i64
    %703 = llvm.mul %687, %702  : i64
    %704 = llvm.add %701, %703  : i64
    %705 = llvm.mlir.constant(2 : index) : i64
    %706 = llvm.mul %33, %705  : i64
    %707 = llvm.add %704, %706  : i64
    %708 = llvm.add %707, %697  : i64
    %709 = llvm.getelementptr %699[%708] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %710 = llvm.load %709 : !llvm.ptr<i32>
    %711 = llvm.extractvalue %678[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %712 = llvm.mlir.constant(4 : index) : i64
    %713 = llvm.mul %682, %712  : i64
    %714 = llvm.mlir.constant(2 : index) : i64
    %715 = llvm.mul %687, %714  : i64
    %716 = llvm.add %713, %715  : i64
    %717 = llvm.mlir.constant(2 : index) : i64
    %718 = llvm.mul %692, %717  : i64
    %719 = llvm.add %716, %718  : i64
    %720 = llvm.add %719, %697  : i64
    %721 = llvm.getelementptr %711[%720] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %710, %721 : !llvm.ptr<i32>
    %722 = llvm.add %697, %696  : i64
    llvm.br ^bb88(%722 : i64)
  ^bb90:  // pred: ^bb88
    %723 = llvm.add %692, %691  : i64
    llvm.br ^bb86(%723 : i64)
  ^bb91:  // pred: ^bb86
    %724 = llvm.add %687, %686  : i64
    llvm.br ^bb84(%724 : i64)
  ^bb92:  // pred: ^bb84
    %725 = llvm.add %682, %681  : i64
    llvm.br ^bb82(%725 : i64)
  ^bb93:  // pred: ^bb82
    %726 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %727 = llvm.insertvalue %317, %726[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %728 = llvm.insertvalue %678, %727[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %728 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %30, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %0[%23] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %0[%64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %66 = llvm.load %65 : !llvm.ptr<ptr<i8>>
    %67 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %69 = llvm.call @omTensorGetDataPtr(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %71 = llvm.insertvalue %70, %68[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %70, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : i64) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.call @omTensorGetShape(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %76 = llvm.call @omTensorGetStrides(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %75[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %79 = llvm.load %78 : !llvm.ptr<i64>
    %80 = llvm.insertvalue %79, %74[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %76[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %82 = llvm.load %81 : !llvm.ptr<i64>
    %83 = llvm.insertvalue %82, %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : i64) : i64
    %85 = llvm.getelementptr %75[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %83[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %76[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.getelementptr %75[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %76[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(3 : i64) : i64
    %99 = llvm.getelementptr %75[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %76[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %104, %67 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26, %67) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %105 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %106 = llvm.extractvalue %105[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %107 = llvm.extractvalue %105[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %108 = llvm.mlir.constant(2 : i64) : i64
    %109 = llvm.mlir.constant(16 : i64) : i64
    %110 = llvm.call @malloc(%109) : (i64) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %112 = llvm.mlir.constant(3 : i64) : i64
    %113 = llvm.call @omTensorCreateUntyped(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %106[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %117 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.bitcast %117 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%113, %114, %116, %118) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %119 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%113, %119) : (!llvm.ptr<i8>, i64) -> ()
    %120 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.extractvalue %106[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.getelementptr %120[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %106[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %126 = llvm.getelementptr %121[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %106[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.getelementptr %120[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %106[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.getelementptr %121[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.extractvalue %106[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.getelementptr %120[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %106[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.getelementptr %121[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(0 : i64) : i64
    %138 = llvm.getelementptr %111[%137] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %113, %138 : !llvm.ptr<ptr<i8>>
    %139 = llvm.mlir.constant(4 : i64) : i64
    %140 = llvm.call @omTensorCreateUntyped(%139) : (i64) -> !llvm.ptr<i8>
    %141 = llvm.mlir.constant(1 : i64) : i64
    %142 = llvm.extractvalue %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.bitcast %142 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %144 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.bitcast %144 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%140, %141, %143, %145) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %146 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%140, %146) : (!llvm.ptr<i8>, i64) -> ()
    %147 = llvm.call @omTensorGetShape(%140) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %148 = llvm.call @omTensorGetStrides(%140) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %149 = llvm.mlir.constant(0 : i64) : i64
    %150 = llvm.extractvalue %107[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %147[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %107[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %148[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %107[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %147[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %107[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %148[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(2 : i64) : i64
    %160 = llvm.extractvalue %107[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %147[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %107[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %148[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(3 : i64) : i64
    %165 = llvm.extractvalue %107[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %147[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %107[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %148[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.getelementptr %111[%169] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %140, %170 : !llvm.ptr<ptr<i8>>
    %171 = llvm.call @omTensorListCreate(%111, %108, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %171 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<200 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<200 x i8>> to !llvm.ptr<i8>
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

