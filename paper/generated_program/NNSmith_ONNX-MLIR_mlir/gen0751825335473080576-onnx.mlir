module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [5] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 8] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<4> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_1(dense<3> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<5> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr<i32>, %arg11: !llvm.ptr<i32>, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.ptr<i32>, %arg16: !llvm.ptr<i32>, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v8_0", "v4_0", "v0_0", "v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v6_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg14, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %19 = llvm.insertvalue %arg15, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg17, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg20, %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg21, %27[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg25, %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(0 : i64) : i64
    %31 = llvm.mlir.constant(-1 : i64) : i64
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i32>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %58 = llvm.insertvalue %56, %57[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(5 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.null : !llvm.ptr<i32>
    %69 = llvm.getelementptr %68[%66] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i32> to i64
    %71 = llvm.mlir.constant(16 : index) : i64
    %72 = llvm.add %70, %71  : i64
    %73 = llvm.call @malloc(%72) : (i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i32> to i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.sub %71, %76  : i64
    %78 = llvm.add %75, %77  : i64
    %79 = llvm.urem %78, %71  : i64
    %80 = llvm.sub %78, %79  : i64
    %81 = llvm.inttoptr %80 : i64 to !llvm.ptr<i32>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %83 = llvm.insertvalue %74, %82[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %66, %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %67, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%89 : i64)
  ^bb1(%92: i64):  // 2 preds: ^bb0, ^bb2
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %94 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.getelementptr %94[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %96 = llvm.load %95 : !llvm.ptr<i32>
    %97 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.getelementptr %97[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %96, %98 : !llvm.ptr<i32>
    %99 = llvm.add %92, %91  : i64
    llvm.br ^bb1(%99 : i64)
  ^bb3:  // pred: ^bb1
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%100 : i64)
  ^bb4(%103: i64):  // 2 preds: ^bb3, ^bb5
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %107[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %110[%106] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %109, %111 : !llvm.ptr<i32>
    %112 = llvm.add %103, %102  : i64
    llvm.br ^bb4(%112 : i64)
  ^bb6:  // pred: ^bb4
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%113 : i64)
  ^bb7(%116: i64):  // 2 preds: ^bb6, ^bb8
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.getelementptr %120[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %122 = llvm.load %121 : !llvm.ptr<i32>
    %123 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %123[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %122, %124 : !llvm.ptr<i32>
    %125 = llvm.add %116, %115  : i64
    llvm.br ^bb7(%125 : i64)
  ^bb9:  // pred: ^bb7
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%126 : i64)
  ^bb10(%129: i64):  // 2 preds: ^bb9, ^bb11
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %131 = llvm.mlir.constant(3 : index) : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.getelementptr %133[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.load %134 : !llvm.ptr<i32>
    %136 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.getelementptr %136[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %135, %137 : !llvm.ptr<i32>
    %138 = llvm.add %129, %128  : i64
    llvm.br ^bb10(%138 : i64)
  ^bb12:  // pred: ^bb10
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%139 : i64)
  ^bb13(%142: i64):  // 2 preds: ^bb12, ^bb14
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.getelementptr %146[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%145] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %148, %150 : !llvm.ptr<i32>
    %151 = llvm.add %142, %141  : i64
    llvm.br ^bb13(%151 : i64)
  ^bb15:  // pred: ^bb13
    %152 = llvm.mlir.constant(5 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.null : !llvm.ptr<i32>
    %155 = llvm.getelementptr %154[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i32> to i64
    %157 = llvm.mlir.constant(16 : index) : i64
    %158 = llvm.add %156, %157  : i64
    %159 = llvm.call @malloc(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.bitcast %159 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %161 = llvm.ptrtoint %160 : !llvm.ptr<i32> to i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.sub %157, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.urem %164, %157  : i64
    %166 = llvm.sub %164, %165  : i64
    %167 = llvm.inttoptr %166 : i64 to !llvm.ptr<i32>
    %168 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %169 = llvm.insertvalue %160, %168[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.insertvalue %167, %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.insertvalue %171, %170[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %152, %172[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %153, %173[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(5 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%175 : i64)
  ^bb16(%178: i64):  // 2 preds: ^bb15, ^bb17
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %180 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.getelementptr %180[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %182 = llvm.load %181 : !llvm.ptr<i32>
    %183 = llvm.mlir.constant(false) : i1
    %184 = "llvm.intr.abs"(%182, %183) : (i32, i1) -> i32
    %185 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.getelementptr %185[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %184, %186 : !llvm.ptr<i32>
    %187 = llvm.add %178, %177  : i64
    llvm.br ^bb16(%187 : i64)
  ^bb18:  // pred: ^bb16
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.null : !llvm.ptr<i64>
    %190 = llvm.getelementptr %189[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %191 = llvm.ptrtoint %190 : !llvm.ptr<i64> to i64
    %192 = llvm.call @malloc(%191) : (i64) -> !llvm.ptr<i8>
    %193 = llvm.bitcast %192 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %194 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %195 = llvm.insertvalue %193, %194[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %196 = llvm.insertvalue %193, %195[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.insertvalue %197, %196[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %199 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %31, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%200 : i64)
  ^bb19(%203: i64):  // 2 preds: ^bb18, ^bb20
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %205 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%203] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.load %206 : !llvm.ptr<i32>
    %208 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %209 = llvm.load %208 : !llvm.ptr<i64>
    %210 = llvm.icmp "slt" %209, %30 : i64
    %211 = llvm.select %210, %30, %209 : i1, i64
    %212 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.getelementptr %212[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %214 = llvm.load %213 : !llvm.ptr<i32>
    %215 = llvm.icmp "sgt" %207, %214 : i32
    %216 = llvm.select %215, %203, %211 : i1, i64
    %217 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %216, %217 : !llvm.ptr<i64>
    %218 = llvm.add %203, %202  : i64
    llvm.br ^bb19(%218 : i64)
  ^bb21:  // pred: ^bb19
    %219 = llvm.mlir.constant(8 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.null : !llvm.ptr<i32>
    %222 = llvm.getelementptr %221[%219] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i32> to i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.add %223, %224  : i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr<i8>
    %227 = llvm.bitcast %226 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i32> to i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.sub %224, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.urem %231, %224  : i64
    %233 = llvm.sub %231, %232  : i64
    %234 = llvm.inttoptr %233 : i64 to !llvm.ptr<i32>
    %235 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %227, %235[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %219, %239[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %220, %240[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%242 : i64)
  ^bb22(%245: i64):  // 2 preds: ^bb21, ^bb23
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %247 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%245] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %249 = llvm.load %248 : !llvm.ptr<i32>
    %250 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%245] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %249, %251 : !llvm.ptr<i32>
    %252 = llvm.add %245, %244  : i64
    llvm.br ^bb22(%252 : i64)
  ^bb24:  // pred: ^bb22
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%253 : i64)
  ^bb25(%256: i64):  // 2 preds: ^bb24, ^bb26
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.load %261 : !llvm.ptr<i32>
    %263 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%259] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %262, %264 : !llvm.ptr<i32>
    %265 = llvm.add %256, %255  : i64
    llvm.br ^bb25(%265 : i64)
  ^bb27:  // pred: ^bb25
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%266 : i64)
  ^bb28(%269: i64):  // 2 preds: ^bb27, ^bb29
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.getelementptr %273[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %275 = llvm.load %274 : !llvm.ptr<i32>
    %276 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %275, %277 : !llvm.ptr<i32>
    %278 = llvm.add %269, %268  : i64
    llvm.br ^bb28(%278 : i64)
  ^bb30:  // pred: ^bb28
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(5 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%279 : i64)
  ^bb31(%282: i64):  // 2 preds: ^bb30, ^bb32
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %284 = llvm.mlir.constant(3 : index) : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.getelementptr %286[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %288 = llvm.load %287 : !llvm.ptr<i32>
    %289 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.getelementptr %289[%285] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %288, %290 : !llvm.ptr<i32>
    %291 = llvm.add %282, %281  : i64
    llvm.br ^bb31(%291 : i64)
  ^bb33:  // pred: ^bb31
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(8 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(16 : index) : i64
    %298 = llvm.mlir.constant(16 : index) : i64
    %299 = llvm.mlir.constant(16 : index) : i64
    %300 = llvm.mlir.null : !llvm.ptr<i32>
    %301 = llvm.getelementptr %300[%299] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %302 = llvm.ptrtoint %301 : !llvm.ptr<i32> to i64
    %303 = llvm.mlir.constant(16 : index) : i64
    %304 = llvm.add %302, %303  : i64
    %305 = llvm.call @malloc(%304) : (i64) -> !llvm.ptr<i8>
    %306 = llvm.bitcast %305 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i32> to i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.sub %303, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.urem %310, %303  : i64
    %312 = llvm.sub %310, %311  : i64
    %313 = llvm.inttoptr %312 : i64 to !llvm.ptr<i32>
    %314 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %315 = llvm.insertvalue %306, %314[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %313, %315[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.insertvalue %317, %316[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %292, %318[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %293, %319[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %294, %320[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %295, %321[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %298, %322[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %295, %324[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %296, %325[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%327 : i64)
  ^bb34(%330: i64):  // 2 preds: ^bb33, ^bb44
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%332 : i64)
  ^bb36(%335: i64):  // 2 preds: ^bb35, ^bb43
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%337 : i64)
  ^bb38(%340: i64):  // 2 preds: ^bb37, ^bb42
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(8 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%342 : i64)
  ^bb40(%345: i64):  // 2 preds: ^bb39, ^bb41
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %347 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %349 = llvm.load %348 : !llvm.ptr<i32>
    %350 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %330, %351  : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mul %335, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.add %355, %340  : i64
    %357 = llvm.add %356, %32  : i64
    %358 = llvm.getelementptr %350[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.mul %349, %359  : i32
    %361 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.mlir.constant(16 : index) : i64
    %363 = llvm.mul %330, %362  : i64
    %364 = llvm.mlir.constant(16 : index) : i64
    %365 = llvm.mul %335, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.mlir.constant(8 : index) : i64
    %368 = llvm.mul %340, %367  : i64
    %369 = llvm.add %366, %368  : i64
    %370 = llvm.add %369, %345  : i64
    %371 = llvm.getelementptr %361[%370] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %360, %371 : !llvm.ptr<i32>
    %372 = llvm.add %345, %344  : i64
    llvm.br ^bb40(%372 : i64)
  ^bb42:  // pred: ^bb40
    %373 = llvm.add %340, %339  : i64
    llvm.br ^bb38(%373 : i64)
  ^bb43:  // pred: ^bb38
    %374 = llvm.add %335, %334  : i64
    llvm.br ^bb36(%374 : i64)
  ^bb44:  // pred: ^bb36
    %375 = llvm.add %330, %329  : i64
    llvm.br ^bb34(%375 : i64)
  ^bb45:  // pred: ^bb34
    %376 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %377 = llvm.insertvalue %174, %376[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %378 = llvm.insertvalue %198, %377[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %379 = llvm.insertvalue %326, %378[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %379 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v8_0", "v4_0", "v0_0", "v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v6_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %30 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %30, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %42, %26 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %0[%43] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %45 = llvm.load %44 : !llvm.ptr<ptr<i8>>
    %46 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.call @omTensorGetDataPtr(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %49 = llvm.bitcast %48 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %50 = llvm.insertvalue %49, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %49, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(0 : i64) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.call @omTensorGetShape(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %55 = llvm.call @omTensorGetStrides(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.mlir.constant(0 : i64) : i64
    %57 = llvm.getelementptr %54[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %58 = llvm.load %57 : !llvm.ptr<i64>
    %59 = llvm.insertvalue %58, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %55[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %61 = llvm.load %60 : !llvm.ptr<i64>
    %62 = llvm.insertvalue %61, %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %62, %46 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %63 = llvm.mlir.constant(3 : i64) : i64
    %64 = llvm.getelementptr %0[%63] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %65 = llvm.load %64 : !llvm.ptr<ptr<i8>>
    %66 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %68 = llvm.call @omTensorGetDataPtr(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %69 = llvm.bitcast %68 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %70 = llvm.insertvalue %69, %67[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %69, %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.insertvalue %72, %71[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.call @omTensorGetShape(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %75 = llvm.call @omTensorGetStrides(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %74[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %78 = llvm.load %77 : !llvm.ptr<i64>
    %79 = llvm.insertvalue %78, %73[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %75[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %81 = llvm.load %80 : !llvm.ptr<i64>
    %82 = llvm.insertvalue %81, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : i64) : i64
    %84 = llvm.getelementptr %74[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %85 = llvm.load %84 : !llvm.ptr<i64>
    %86 = llvm.insertvalue %85, %82[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %75[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %88 = llvm.load %87 : !llvm.ptr<i64>
    %89 = llvm.insertvalue %88, %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(2 : i64) : i64
    %91 = llvm.getelementptr %74[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %92 = llvm.load %91 : !llvm.ptr<i64>
    %93 = llvm.insertvalue %92, %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %75[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %95 = llvm.load %94 : !llvm.ptr<i64>
    %96 = llvm.insertvalue %95, %93[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(3 : i64) : i64
    %98 = llvm.getelementptr %74[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %99 = llvm.load %98 : !llvm.ptr<i64>
    %100 = llvm.insertvalue %99, %96[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %75[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %102 = llvm.load %101 : !llvm.ptr<i64>
    %103 = llvm.insertvalue %102, %100[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %103, %66 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26, %46, %66) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %104 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %105 = llvm.extractvalue %104[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %106 = llvm.extractvalue %104[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %107 = llvm.extractvalue %104[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.mlir.constant(24 : i64) : i64
    %110 = llvm.call @malloc(%109) : (i64) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.call @omTensorCreateUntyped(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %105[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %117 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.bitcast %117 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%113, %114, %116, %118) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %119 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%113, %119) : (!llvm.ptr<i8>, i64) -> ()
    %120 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.extractvalue %105[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %120[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %105[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.getelementptr %121[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(0 : i64) : i64
    %128 = llvm.getelementptr %111[%127] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %113, %128 : !llvm.ptr<ptr<i8>>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.call @omTensorCreateUntyped(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %106[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %133 = llvm.bitcast %132 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %134 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %135 = llvm.bitcast %134 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%130, %131, %133, %135) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %136 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%130, %136) : (!llvm.ptr<i8>, i64) -> ()
    %137 = llvm.call @omTensorGetShape(%130) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.call @omTensorGetStrides(%130) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.getelementptr %111[%139] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %130, %140 : !llvm.ptr<ptr<i8>>
    %141 = llvm.mlir.constant(4 : i64) : i64
    %142 = llvm.call @omTensorCreateUntyped(%141) : (i64) -> !llvm.ptr<i8>
    %143 = llvm.mlir.constant(1 : i64) : i64
    %144 = llvm.extractvalue %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.bitcast %144 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %146 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.bitcast %146 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%142, %143, %145, %147) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %148 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%142, %148) : (!llvm.ptr<i8>, i64) -> ()
    %149 = llvm.call @omTensorGetShape(%142) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %150 = llvm.call @omTensorGetStrides(%142) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %151 = llvm.mlir.constant(0 : i64) : i64
    %152 = llvm.extractvalue %107[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %149[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %107[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %150[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.extractvalue %107[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %149[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.extractvalue %107[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %150[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.mlir.constant(2 : i64) : i64
    %162 = llvm.extractvalue %107[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %149[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.extractvalue %107[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.getelementptr %150[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.mlir.constant(3 : i64) : i64
    %167 = llvm.extractvalue %107[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %149[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.extractvalue %107[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %150[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.mlir.constant(2 : i64) : i64
    %172 = llvm.getelementptr %111[%171] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %142, %172 : !llvm.ptr<ptr<i8>>
    %173 = llvm.call @omTensorListCreate(%111, %108, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %173 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<246 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<246 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<186 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<186 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

