module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 2, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 2, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: !llvm.ptr<i32>, %arg30: !llvm.ptr<i32>, %arg31: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0", "v6_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %21 = llvm.insertvalue %arg18, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg25, %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg26, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg23, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg27, %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg24, %29[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg28, %30[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %33 = llvm.insertvalue %arg29, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.insertvalue %arg30, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.insertvalue %arg31, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.mlir.constant(0 : i32) : i32
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %69, %68[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %70, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.null : !llvm.ptr<i32>
    %82 = llvm.getelementptr %81[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.mlir.constant(16 : index) : i64
    %85 = llvm.add %83, %84  : i64
    %86 = llvm.call @malloc(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.bitcast %86 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i32> to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %84, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.urem %91, %84  : i64
    %93 = llvm.sub %91, %92  : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr<i32>
    %95 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %96 = llvm.insertvalue %87, %95[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.insertvalue %79, %99[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.insertvalue %80, %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.null : !llvm.ptr<i32>
    %104 = llvm.getelementptr %103[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %105 = llvm.ptrtoint %104 : !llvm.ptr<i32> to i64
    %106 = llvm.alloca %105 x i32 : (i64) -> !llvm.ptr<i32>
    %107 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %108 = llvm.insertvalue %106, %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%112 : i64)
  ^bb1(%115: i64):  // 2 preds: ^bb0, ^bb5
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %117 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %37, %117 : !llvm.ptr<i32>
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%118 : i64)
  ^bb3(%121: i64):  // 2 preds: ^bb2, ^bb4
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %123 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mul %115, %124  : i64
    %126 = llvm.add %125, %121  : i64
    %127 = llvm.getelementptr %123[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.load %127 : !llvm.ptr<i32>
    %129 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.getelementptr %129[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.load %130 : !llvm.ptr<i32>
    %132 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.mul %128, %131  : i32
    %135 = llvm.add %133, %134  : i32
    %136 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %135, %136 : !llvm.ptr<i32>
    %137 = llvm.add %121, %120  : i64
    llvm.br ^bb3(%137 : i64)
  ^bb5:  // pred: ^bb3
    %138 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.getelementptr %140[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %139, %141 : !llvm.ptr<i32>
    %142 = llvm.add %115, %114  : i64
    llvm.br ^bb1(%142 : i64)
  ^bb6:  // pred: ^bb1
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.null : !llvm.ptr<i1>
    %148 = llvm.getelementptr %147[%146] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %149 = llvm.ptrtoint %148 : !llvm.ptr<i1> to i64
    %150 = llvm.mlir.constant(16 : index) : i64
    %151 = llvm.add %149, %150  : i64
    %152 = llvm.call @malloc(%151) : (i64) -> !llvm.ptr<i8>
    %153 = llvm.bitcast %152 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %154 = llvm.ptrtoint %153 : !llvm.ptr<i1> to i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.sub %150, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.urem %157, %150  : i64
    %159 = llvm.sub %157, %158  : i64
    %160 = llvm.inttoptr %159 : i64 to !llvm.ptr<i1>
    %161 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %162 = llvm.insertvalue %153, %161[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.insertvalue %160, %162[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.insertvalue %164, %163[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %143, %165[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %144, %166[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.insertvalue %144, %167[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.insertvalue %145, %168[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%170 : i64)
  ^bb7(%173: i64):  // 2 preds: ^bb6, ^bb11
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%175 : i64)
  ^bb9(%178: i64):  // 2 preds: ^bb8, ^bb10
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %180 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.getelementptr %180[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %182 = llvm.load %181 : !llvm.ptr<i32>
    %183 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %173, %184  : i64
    %186 = llvm.add %185, %178  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.load %187 : !llvm.ptr<i32>
    %189 = llvm.icmp "slt" %182, %188 : i32
    %190 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %173, %191  : i64
    %193 = llvm.add %192, %178  : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %189, %194 : !llvm.ptr<i1>
    %195 = llvm.add %178, %177  : i64
    llvm.br ^bb9(%195 : i64)
  ^bb11:  // pred: ^bb9
    %196 = llvm.add %173, %172  : i64
    llvm.br ^bb7(%196 : i64)
  ^bb12:  // pred: ^bb7
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(4 : index) : i64
    %203 = llvm.mlir.constant(8 : index) : i64
    %204 = llvm.mlir.constant(8 : index) : i64
    %205 = llvm.mlir.null : !llvm.ptr<i32>
    %206 = llvm.getelementptr %205[%204] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<i32> to i64
    %208 = llvm.mlir.constant(16 : index) : i64
    %209 = llvm.add %207, %208  : i64
    %210 = llvm.call @malloc(%209) : (i64) -> !llvm.ptr<i8>
    %211 = llvm.bitcast %210 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %212 = llvm.ptrtoint %211 : !llvm.ptr<i32> to i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.sub %208, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.urem %215, %208  : i64
    %217 = llvm.sub %215, %216  : i64
    %218 = llvm.inttoptr %217 : i64 to !llvm.ptr<i32>
    %219 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %220 = llvm.insertvalue %211, %219[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %218, %220[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.insertvalue %222, %221[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %197, %223[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %198, %224[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %199, %225[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %200, %226[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %203, %227[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %202, %228[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %200, %229[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %201, %230[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%232 : i64)
  ^bb13(%235: i64):  // 2 preds: ^bb12, ^bb23
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%237 : i64)
  ^bb15(%240: i64):  // 2 preds: ^bb14, ^bb22
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%242 : i64)
  ^bb17(%245: i64):  // 2 preds: ^bb16, ^bb21
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%247 : i64)
  ^bb19(%250: i64):  // 2 preds: ^bb18, ^bb20
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %252 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mul %38, %253  : i64
    %255 = llvm.add %254, %250  : i64
    %256 = llvm.getelementptr %252[%255] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %257 = llvm.load %256 : !llvm.ptr<i1>
    %258 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %259 = llvm.load %258 : !llvm.ptr<i32>
    %260 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(8 : index) : i64
    %262 = llvm.mul %235, %261  : i64
    %263 = llvm.mlir.constant(4 : index) : i64
    %264 = llvm.mul %240, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mul %245, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.add %268, %250  : i64
    %270 = llvm.getelementptr %260[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %271 = llvm.load %270 : !llvm.ptr<i32>
    %272 = llvm.select %257, %259, %271 : i1, i32
    %273 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.mlir.constant(8 : index) : i64
    %275 = llvm.mul %235, %274  : i64
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mul %240, %276  : i64
    %278 = llvm.add %275, %277  : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mul %245, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.add %281, %250  : i64
    %283 = llvm.getelementptr %273[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %272, %283 : !llvm.ptr<i32>
    %284 = llvm.add %250, %249  : i64
    llvm.br ^bb19(%284 : i64)
  ^bb21:  // pred: ^bb19
    %285 = llvm.add %245, %244  : i64
    llvm.br ^bb17(%285 : i64)
  ^bb22:  // pred: ^bb17
    %286 = llvm.add %240, %239  : i64
    llvm.br ^bb15(%286 : i64)
  ^bb23:  // pred: ^bb15
    %287 = llvm.add %235, %234  : i64
    llvm.br ^bb13(%287 : i64)
  ^bb24:  // pred: ^bb13
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.null : !llvm.ptr<i64>
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %292 = llvm.ptrtoint %291 : !llvm.ptr<i64> to i64
    %293 = llvm.mlir.constant(16 : index) : i64
    %294 = llvm.add %292, %293  : i64
    %295 = llvm.call @malloc(%294) : (i64) -> !llvm.ptr<i8>
    %296 = llvm.bitcast %295 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %297 = llvm.ptrtoint %296 : !llvm.ptr<i64> to i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.sub %293, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.urem %300, %293  : i64
    %302 = llvm.sub %300, %301  : i64
    %303 = llvm.inttoptr %302 : i64 to !llvm.ptr<i64>
    %304 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %305 = llvm.insertvalue %296, %304[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %288, %308[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.insertvalue %289, %309[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%311 : i64)
  ^bb25(%314: i64):  // 2 preds: ^bb24, ^bb26
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %316 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%314] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %317 : !llvm.ptr<i64>
    %318 = llvm.add %314, %313  : i64
    llvm.br ^bb25(%318 : i64)
  ^bb27:  // pred: ^bb25
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.null : !llvm.ptr<i64>
    %322 = llvm.getelementptr %321[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i64> to i64
    %324 = llvm.mlir.constant(16 : index) : i64
    %325 = llvm.add %323, %324  : i64
    %326 = llvm.call @malloc(%325) : (i64) -> !llvm.ptr<i8>
    %327 = llvm.bitcast %326 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i64> to i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.sub %324, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.urem %331, %324  : i64
    %333 = llvm.sub %331, %332  : i64
    %334 = llvm.inttoptr %333 : i64 to !llvm.ptr<i64>
    %335 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %336 = llvm.insertvalue %327, %335[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %319, %339[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %320, %340[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%342 : i64)
  ^bb28(%345: i64):  // 2 preds: ^bb27, ^bb29
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %347 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %349 = llvm.load %348 : !llvm.ptr<i64>
    %350 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %351 = llvm.load %350 : !llvm.ptr<i64>
    %352 = llvm.mul %349, %351  : i64
    %353 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.getelementptr %353[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %352, %354 : !llvm.ptr<i64>
    %355 = llvm.add %345, %344  : i64
    llvm.br ^bb28(%355 : i64)
  ^bb30:  // pred: ^bb28
    %356 = llvm.mlir.constant(4 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.null : !llvm.ptr<i1>
    %359 = llvm.getelementptr %358[%356] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i1> to i64
    %361 = llvm.mlir.constant(16 : index) : i64
    %362 = llvm.add %360, %361  : i64
    %363 = llvm.call @malloc(%362) : (i64) -> !llvm.ptr<i8>
    %364 = llvm.bitcast %363 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i1> to i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.sub %361, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.urem %368, %361  : i64
    %370 = llvm.sub %368, %369  : i64
    %371 = llvm.inttoptr %370 : i64 to !llvm.ptr<i1>
    %372 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %373 = llvm.insertvalue %364, %372[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.insertvalue %371, %373[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.insertvalue %375, %374[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.insertvalue %356, %376[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.insertvalue %357, %377[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%379 : i64)
  ^bb31(%382: i64):  // 2 preds: ^bb30, ^bb32
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %384 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.getelementptr %387[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %389 = llvm.load %388 : !llvm.ptr<i64>
    %390 = llvm.icmp "eq" %386, %389 : i64
    %391 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%382] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %390, %392 : !llvm.ptr<i1>
    %393 = llvm.add %382, %381  : i64
    llvm.br ^bb31(%393 : i64)
  ^bb33:  // pred: ^bb31
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i64>
    %397 = llvm.getelementptr %396[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i64> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i64> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i64>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.insertvalue %394, %414[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.insertvalue %395, %415[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%417 : i64)
  ^bb34(%420: i64):  // 2 preds: ^bb33, ^bb35
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %422 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%420] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %424 = llvm.load %423 : !llvm.ptr<i1>
    %425 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %427 = llvm.load %426 : !llvm.ptr<i64>
    %428 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.getelementptr %428[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %430 = llvm.load %429 : !llvm.ptr<i64>
    %431 = llvm.select %424, %427, %430 : i1, i64
    %432 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.getelementptr %432[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %431, %433 : !llvm.ptr<i64>
    %434 = llvm.add %420, %419  : i64
    llvm.br ^bb34(%434 : i64)
  ^bb36:  // pred: ^bb34
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(4 : index) : i64
    %441 = llvm.mlir.constant(8 : index) : i64
    %442 = llvm.mlir.constant(8 : index) : i64
    %443 = llvm.mlir.null : !llvm.ptr<i32>
    %444 = llvm.getelementptr %443[%442] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %445 = llvm.ptrtoint %444 : !llvm.ptr<i32> to i64
    %446 = llvm.mlir.constant(16 : index) : i64
    %447 = llvm.add %445, %446  : i64
    %448 = llvm.call @malloc(%447) : (i64) -> !llvm.ptr<i8>
    %449 = llvm.bitcast %448 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %450 = llvm.ptrtoint %449 : !llvm.ptr<i32> to i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.sub %446, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.urem %453, %446  : i64
    %455 = llvm.sub %453, %454  : i64
    %456 = llvm.inttoptr %455 : i64 to !llvm.ptr<i32>
    %457 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %458 = llvm.insertvalue %449, %457[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %456, %458[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.insertvalue %460, %459[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %435, %461[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %436, %462[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %437, %463[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %438, %464[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %441, %465[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %440, %466[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %438, %467[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %439, %468[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%470 : i64)
  ^bb37(%473: i64):  // 2 preds: ^bb36, ^bb47
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%475 : i64)
  ^bb39(%478: i64):  // 2 preds: ^bb38, ^bb46
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%480 : i64)
  ^bb41(%483: i64):  // 2 preds: ^bb40, ^bb45
    %484 = llvm.icmp "slt" %483, %481 : i64
    llvm.cond_br %484, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%485 : i64)
  ^bb43(%488: i64):  // 2 preds: ^bb42, ^bb44
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %490 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.mlir.constant(8 : index) : i64
    %492 = llvm.mul %38, %491  : i64
    %493 = llvm.mlir.constant(4 : index) : i64
    %494 = llvm.mul %478, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mul %483, %496  : i64
    %498 = llvm.add %495, %497  : i64
    %499 = llvm.add %498, %488  : i64
    %500 = llvm.getelementptr %490[%499] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %501 = llvm.load %500 : !llvm.ptr<i32>
    %502 = llvm.extractvalue %469[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.mlir.constant(8 : index) : i64
    %504 = llvm.mul %473, %503  : i64
    %505 = llvm.mlir.constant(4 : index) : i64
    %506 = llvm.mul %478, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mul %483, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.add %510, %488  : i64
    %512 = llvm.getelementptr %502[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %501, %512 : !llvm.ptr<i32>
    %513 = llvm.add %488, %487  : i64
    llvm.br ^bb43(%513 : i64)
  ^bb45:  // pred: ^bb43
    %514 = llvm.add %483, %482  : i64
    llvm.br ^bb41(%514 : i64)
  ^bb46:  // pred: ^bb41
    %515 = llvm.add %478, %477  : i64
    llvm.br ^bb39(%515 : i64)
  ^bb47:  // pred: ^bb39
    %516 = llvm.add %473, %472  : i64
    llvm.br ^bb37(%516 : i64)
  ^bb48:  // pred: ^bb37
    %517 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %518 = llvm.insertvalue %101, %517[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %519 = llvm.insertvalue %469, %518[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %519 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v2_0", "v6_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %21 = llvm.extractvalue %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %20[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %20[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %20[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %20[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %33 = llvm.extractvalue %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.extractvalue %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %70, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %0[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %73 = llvm.load %72 : !llvm.ptr<ptr<i8>>
    %74 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %76 = llvm.call @omTensorGetDataPtr(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %78 = llvm.insertvalue %77, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : i64) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.call @omTensorGetShape(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.getelementptr %82[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %83[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %83[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.getelementptr %82[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %83[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(3 : i64) : i64
    %106 = llvm.getelementptr %82[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %83[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %111, %74 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %112 = llvm.mlir.constant(3 : i64) : i64
    %113 = llvm.getelementptr %0[%112] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %114 = llvm.load %113 : !llvm.ptr<ptr<i8>>
    %115 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %116 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %117 = llvm.call @omTensorGetDataPtr(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %119 = llvm.insertvalue %118, %116[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %120 = llvm.insertvalue %118, %119[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.insertvalue %121, %120[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %123 = llvm.call @omTensorGetShape(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %124 = llvm.call @omTensorGetStrides(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %122, %115 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %74, %115) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %125 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %126 = llvm.extractvalue %125[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %127 = llvm.extractvalue %125[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.mlir.constant(2 : i64) : i64
    %129 = llvm.mlir.constant(16 : i64) : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.call @omTensorCreateUntyped(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %126[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.bitcast %135 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %137 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%133, %134, %136, %138) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %139 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%133, %139) : (!llvm.ptr<i8>, i64) -> ()
    %140 = llvm.call @omTensorGetShape(%133) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %141 = llvm.call @omTensorGetStrides(%133) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.mlir.constant(0 : i64) : i64
    %143 = llvm.extractvalue %126[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.getelementptr %140[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %126[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %141[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(0 : i64) : i64
    %148 = llvm.getelementptr %131[%147] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %133, %148 : !llvm.ptr<ptr<i8>>
    %149 = llvm.mlir.constant(4 : i64) : i64
    %150 = llvm.call @omTensorCreateUntyped(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.mlir.constant(1 : i64) : i64
    %152 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.bitcast %152 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %154 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.bitcast %154 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%150, %151, %153, %155) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %156 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%150, %156) : (!llvm.ptr<i8>, i64) -> ()
    %157 = llvm.call @omTensorGetShape(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %158 = llvm.call @omTensorGetStrides(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %159 = llvm.mlir.constant(0 : i64) : i64
    %160 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %157[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %158[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(1 : i64) : i64
    %165 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %157[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %158[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(2 : i64) : i64
    %170 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %157[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.getelementptr %158[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(3 : i64) : i64
    %175 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %157[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %158[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(1 : i64) : i64
    %180 = llvm.getelementptr %131[%179] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %150, %180 : !llvm.ptr<ptr<i8>>
    %181 = llvm.call @omTensorListCreate(%131, %128, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %181 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<261 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<261 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

