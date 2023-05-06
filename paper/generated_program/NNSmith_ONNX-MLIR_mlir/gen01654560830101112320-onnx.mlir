module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i8\22 , \22dims\22 : [] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 5] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<3> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_1(dense<4> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<4> : tensor<1xi8>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i8>, %arg6: !llvm.ptr<i8>, %arg7: i64, %arg8: !llvm.ptr<i32>, %arg9: !llvm.ptr<i32>, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v11_0", "v3_0", "v7_0", "v0_0", "v2_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i8>, ptr<i8>, i64)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.insertvalue %arg8, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg10, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %arg13, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg15, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg17, %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %23 = llvm.insertvalue %arg18, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg20, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg21, %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg22, %27[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg23, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg27, %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg24, %31[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg28, %32[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.mlir.constant(-128 : i8) : i8
    %36 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i8>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x i8>> to !llvm.ptr<i8>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i32>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.null : !llvm.ptr<i8>
    %71 = llvm.getelementptr %70[%69] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i8> to i64
    %73 = llvm.call @malloc(%72) : (i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i8>, ptr<i8>, i64)>
    %76 = llvm.insertvalue %74, %75[0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %77 = llvm.insertvalue %74, %76[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.insertvalue %78, %77[2] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %80 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    llvm.store %35, %80 : !llvm.ptr<i8>
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%81 : i64)
  ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb2
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %86 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%84] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %88 = llvm.load %87 : !llvm.ptr<i8>
    %89 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %90 = llvm.load %89 : !llvm.ptr<i8>
    %91 = llvm.icmp "sgt" %90, %88 : i8
    %92 = llvm.select %91, %90, %88 : i1, i8
    %93 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    llvm.store %92, %93 : !llvm.ptr<i8>
    %94 = llvm.add %84, %83  : i64
    llvm.br ^bb1(%94 : i64)
  ^bb3:  // pred: ^bb1
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.null : !llvm.ptr<i32>
    %98 = llvm.getelementptr %97[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i32> to i64
    %100 = llvm.mlir.constant(16 : index) : i64
    %101 = llvm.add %99, %100  : i64
    %102 = llvm.call @malloc(%101) : (i64) -> !llvm.ptr<i8>
    %103 = llvm.bitcast %102 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i32> to i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.sub %100, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.urem %107, %100  : i64
    %109 = llvm.sub %107, %108  : i64
    %110 = llvm.inttoptr %109 : i64 to !llvm.ptr<i32>
    %111 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.insertvalue %103, %111[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %110, %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %95, %115[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %96, %116[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%118 : i64)
  ^bb4(%121: i64):  // 2 preds: ^bb3, ^bb5
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %123 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %123[%34] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %125 = llvm.load %124 : !llvm.ptr<i32>
    %126 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.getelementptr %126[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.load %127 : !llvm.ptr<i32>
    %129 = llvm.sub %125, %128  : i32
    %130 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.getelementptr %130[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %129, %131 : !llvm.ptr<i32>
    %132 = llvm.add %121, %120  : i64
    llvm.br ^bb4(%132 : i64)
  ^bb6:  // pred: ^bb4
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.null : !llvm.ptr<i1>
    %135 = llvm.getelementptr %134[%133] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i1> to i64
    %137 = llvm.call @malloc(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %140 = llvm.insertvalue %138, %139[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %144 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %145 = llvm.load %144 : !llvm.ptr<i8>
    %146 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %147 = llvm.load %146 : !llvm.ptr<i8>
    %148 = llvm.icmp "eq" %145, %147 : i8
    %149 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    llvm.store %148, %149 : !llvm.ptr<i1>
    %150 = llvm.mlir.constant(5 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.null : !llvm.ptr<i32>
    %153 = llvm.getelementptr %152[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %154 = llvm.ptrtoint %153 : !llvm.ptr<i32> to i64
    %155 = llvm.mlir.constant(16 : index) : i64
    %156 = llvm.add %154, %155  : i64
    %157 = llvm.call @malloc(%156) : (i64) -> !llvm.ptr<i8>
    %158 = llvm.bitcast %157 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i32> to i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.sub %155, %160  : i64
    %162 = llvm.add %159, %161  : i64
    %163 = llvm.urem %162, %155  : i64
    %164 = llvm.sub %162, %163  : i64
    %165 = llvm.inttoptr %164 : i64 to !llvm.ptr<i32>
    %166 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %167 = llvm.insertvalue %158, %166[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.insertvalue %169, %168[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.insertvalue %150, %170[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.insertvalue %151, %171[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%173 : i64)
  ^bb7(%176: i64):  // 2 preds: ^bb6, ^bb8
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %178 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%176] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %180 = llvm.load %179 : !llvm.ptr<i32>
    %181 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.getelementptr %181[%176] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %180, %182 : !llvm.ptr<i32>
    %183 = llvm.add %176, %175  : i64
    llvm.br ^bb7(%183 : i64)
  ^bb9:  // pred: ^bb7
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%184 : i64)
  ^bb10(%187: i64):  // 2 preds: ^bb9, ^bb11
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.getelementptr %191[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %193 = llvm.load %192 : !llvm.ptr<i32>
    %194 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.getelementptr %194[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %193, %195 : !llvm.ptr<i32>
    %196 = llvm.add %187, %186  : i64
    llvm.br ^bb10(%196 : i64)
  ^bb12:  // pred: ^bb10
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%197 : i64)
  ^bb13(%200: i64):  // 2 preds: ^bb12, ^bb14
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %202 = llvm.mlir.constant(3 : index) : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.getelementptr %204[%200] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %206 = llvm.load %205 : !llvm.ptr<i32>
    %207 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.getelementptr %207[%203] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %206, %208 : !llvm.ptr<i32>
    %209 = llvm.add %200, %199  : i64
    llvm.br ^bb13(%209 : i64)
  ^bb15:  // pred: ^bb13
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%210 : i64)
  ^bb16(%213: i64):  // 2 preds: ^bb15, ^bb17
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %215 = llvm.mlir.constant(4 : index) : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.getelementptr %217[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %219 = llvm.load %218 : !llvm.ptr<i32>
    %220 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.getelementptr %220[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %219, %221 : !llvm.ptr<i32>
    %222 = llvm.add %213, %212  : i64
    llvm.br ^bb16(%222 : i64)
  ^bb18:  // pred: ^bb16
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(5 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(10 : index) : i64
    %229 = llvm.mlir.constant(20 : index) : i64
    %230 = llvm.mlir.constant(40 : index) : i64
    %231 = llvm.mlir.null : !llvm.ptr<i32>
    %232 = llvm.getelementptr %231[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %233 = llvm.ptrtoint %232 : !llvm.ptr<i32> to i64
    %234 = llvm.mlir.constant(16 : index) : i64
    %235 = llvm.add %233, %234  : i64
    %236 = llvm.call @malloc(%235) : (i64) -> !llvm.ptr<i8>
    %237 = llvm.bitcast %236 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i32> to i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.sub %234, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.urem %241, %234  : i64
    %243 = llvm.sub %241, %242  : i64
    %244 = llvm.inttoptr %243 : i64 to !llvm.ptr<i32>
    %245 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %246 = llvm.insertvalue %237, %245[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %244, %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.insertvalue %248, %247[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %223, %249[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %224, %250[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %225, %251[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %226, %252[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %229, %253[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %228, %254[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %226, %255[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %227, %256[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%258 : i64)
  ^bb19(%261: i64):  // 2 preds: ^bb18, ^bb29
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb20, ^bb30
  ^bb20:  // pred: ^bb19
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%263 : i64)
  ^bb21(%266: i64):  // 2 preds: ^bb20, ^bb28
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb22, ^bb29
  ^bb22:  // pred: ^bb21
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%268 : i64)
  ^bb23(%271: i64):  // 2 preds: ^bb22, ^bb27
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb24, ^bb28
  ^bb24:  // pred: ^bb23
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(5 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%273 : i64)
  ^bb25(%276: i64):  // 2 preds: ^bb24, ^bb26
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %278 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %279 = llvm.load %278 : !llvm.ptr<i1>
    %280 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mul %261, %281  : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mul %266, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.add %285, %271  : i64
    %287 = llvm.add %286, %34  : i64
    %288 = llvm.getelementptr %280[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.load %288 : !llvm.ptr<i32>
    %290 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %292 = llvm.load %291 : !llvm.ptr<i32>
    %293 = llvm.select %279, %289, %292 : i1, i32
    %294 = llvm.extractvalue %257[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.mlir.constant(20 : index) : i64
    %296 = llvm.mul %261, %295  : i64
    %297 = llvm.mlir.constant(10 : index) : i64
    %298 = llvm.mul %266, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.mlir.constant(5 : index) : i64
    %301 = llvm.mul %271, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %276  : i64
    %304 = llvm.getelementptr %294[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %293, %304 : !llvm.ptr<i32>
    %305 = llvm.add %276, %275  : i64
    llvm.br ^bb25(%305 : i64)
  ^bb27:  // pred: ^bb25
    %306 = llvm.add %271, %270  : i64
    llvm.br ^bb23(%306 : i64)
  ^bb28:  // pred: ^bb23
    %307 = llvm.add %266, %265  : i64
    llvm.br ^bb21(%307 : i64)
  ^bb29:  // pred: ^bb21
    %308 = llvm.add %261, %260  : i64
    llvm.br ^bb19(%308 : i64)
  ^bb30:  // pred: ^bb19
    llvm.return %257 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i8>, ptr<i8>, i64)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v11_0", "v3_0", "v7_0", "v0_0", "v2_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i8>, ptr<i8>, i64)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %10 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.extractvalue %16[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.extractvalue %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %23 = llvm.extractvalue %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %22[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %22[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %22[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %22[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %11, %12, %13, %14, %15, %17, %18, %19, %20, %21, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i8>, !llvm.ptr<i8>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %34, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i8>, ptr<i8>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i8>, ptr<i8>, i64)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i8>, ptr<i8>, i64)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i8>, ptr<i8>, i64)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %33, %26 : !llvm.ptr<struct<(ptr<i8>, ptr<i8>, i64)>>
    %36 = llvm.mlir.constant(2 : i64) : i64
    %37 = llvm.getelementptr %0[%36] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<i8>>
    %39 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.call @omTensorGetDataPtr(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %43 = llvm.insertvalue %42, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %42, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(0 : i64) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.call @omTensorGetShape(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %48 = llvm.call @omTensorGetStrides(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.mlir.constant(0 : i64) : i64
    %50 = llvm.getelementptr %47[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %51 = llvm.load %50 : !llvm.ptr<i64>
    %52 = llvm.insertvalue %51, %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.getelementptr %48[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %54 = llvm.load %53 : !llvm.ptr<i64>
    %55 = llvm.insertvalue %54, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %55, %39 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %56 = llvm.mlir.constant(3 : i64) : i64
    %57 = llvm.getelementptr %0[%56] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %58 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %59 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.call @omTensorGetDataPtr(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %62 = llvm.bitcast %61 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %63 = llvm.insertvalue %62, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %62, %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : i64) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.call @omTensorGetShape(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %71 = llvm.load %70 : !llvm.ptr<i64>
    %72 = llvm.insertvalue %71, %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %74 = llvm.load %73 : !llvm.ptr<i64>
    %75 = llvm.insertvalue %74, %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %75, %59 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %76 = llvm.mlir.constant(4 : i64) : i64
    %77 = llvm.getelementptr %0[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %78 = llvm.load %77 : !llvm.ptr<ptr<i8>>
    %79 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %80 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %81 = llvm.call @omTensorGetDataPtr(%78) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %82 = llvm.bitcast %81 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %83 = llvm.insertvalue %82, %80[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %82, %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(0 : i64) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.call @omTensorGetShape(%78) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%78) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %91 = llvm.load %90 : !llvm.ptr<i64>
    %92 = llvm.insertvalue %91, %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %94 = llvm.load %93 : !llvm.ptr<i64>
    %95 = llvm.insertvalue %94, %92[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(1 : i64) : i64
    %97 = llvm.getelementptr %87[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %98 = llvm.load %97 : !llvm.ptr<i64>
    %99 = llvm.insertvalue %98, %95[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %88[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %101 = llvm.load %100 : !llvm.ptr<i64>
    %102 = llvm.insertvalue %101, %99[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %105 = llvm.load %104 : !llvm.ptr<i64>
    %106 = llvm.insertvalue %105, %102[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %88[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %108 = llvm.load %107 : !llvm.ptr<i64>
    %109 = llvm.insertvalue %108, %106[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.getelementptr %87[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %112 = llvm.load %111 : !llvm.ptr<i64>
    %113 = llvm.insertvalue %112, %109[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %88[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %115 = llvm.load %114 : !llvm.ptr<i64>
    %116 = llvm.insertvalue %115, %113[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %116, %79 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26, %39, %59, %79) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i8>, ptr<i8>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %117 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.mlir.constant(8 : i64) : i64
    %120 = llvm.call @malloc(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %122 = llvm.mlir.constant(4 : i64) : i64
    %123 = llvm.call @omTensorCreateUntyped(%122) : (i64) -> !llvm.ptr<i8>
    %124 = llvm.mlir.constant(1 : i64) : i64
    %125 = llvm.extractvalue %117[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.bitcast %125 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %127 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%123, %124, %126, %128) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %129 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%123, %129) : (!llvm.ptr<i8>, i64) -> ()
    %130 = llvm.call @omTensorGetShape(%123) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %131 = llvm.call @omTensorGetStrides(%123) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.mlir.constant(0 : i64) : i64
    %133 = llvm.extractvalue %117[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %130[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %117[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %131[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(1 : i64) : i64
    %138 = llvm.extractvalue %117[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %130[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %117[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %131[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(2 : i64) : i64
    %143 = llvm.extractvalue %117[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %130[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %117[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %131[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(3 : i64) : i64
    %148 = llvm.extractvalue %117[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %130[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.extractvalue %117[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %131[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.mlir.constant(0 : i64) : i64
    %153 = llvm.getelementptr %121[%152] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %123, %153 : !llvm.ptr<ptr<i8>>
    %154 = llvm.call @omTensorListCreate(%121, %118, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %154 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<303 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<303 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

