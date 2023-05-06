module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [4 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[4, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[4, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v8_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.constant(0 : i32) : i32
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(3 : index) : i64
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
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
    %41 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %48 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %59 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %83 = llvm.bitcast %82 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %84 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %85 = llvm.insertvalue %83, %84[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.insertvalue %99, %98[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.insertvalue %103, %102[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(4 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.null : !llvm.ptr<i32>
    %111 = llvm.getelementptr %110[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<i32> to i64
    %113 = llvm.mlir.constant(16 : index) : i64
    %114 = llvm.add %112, %113  : i64
    %115 = llvm.call @malloc(%114) : (i64) -> !llvm.ptr<i8>
    %116 = llvm.bitcast %115 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i32> to i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.sub %113, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.urem %120, %113  : i64
    %122 = llvm.sub %120, %121  : i64
    %123 = llvm.inttoptr %122 : i64 to !llvm.ptr<i32>
    %124 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %125 = llvm.insertvalue %116, %124[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %105, %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %106, %129[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %107, %130[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %108, %131[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %108, %134[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%137 : i64)
  ^bb1(%140: i64):  // 2 preds: ^bb0, ^bb11
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%142 : i64)
  ^bb3(%145: i64):  // 2 preds: ^bb2, ^bb10
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%147 : i64)
  ^bb5(%150: i64):  // 2 preds: ^bb4, ^bb9
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%152 : i64)
  ^bb7(%155: i64):  // 2 preds: ^bb6, ^bb8
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %157 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.add %140, %145  : i64
    %159 = llvm.add %158, %150  : i64
    %160 = llvm.add %159, %155  : i64
    %161 = llvm.getelementptr %157[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.add %140, %145  : i64
    %165 = llvm.add %164, %150  : i64
    %166 = llvm.add %165, %155  : i64
    %167 = llvm.getelementptr %163[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %162, %167 : !llvm.ptr<i32>
    %168 = llvm.add %155, %154  : i64
    llvm.br ^bb7(%168 : i64)
  ^bb9:  // pred: ^bb7
    %169 = llvm.add %150, %149  : i64
    llvm.br ^bb5(%169 : i64)
  ^bb10:  // pred: ^bb5
    %170 = llvm.add %145, %144  : i64
    llvm.br ^bb3(%170 : i64)
  ^bb11:  // pred: ^bb3
    %171 = llvm.add %140, %139  : i64
    llvm.br ^bb1(%171 : i64)
  ^bb12:  // pred: ^bb1
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%172 : i64)
  ^bb13(%175: i64):  // 2 preds: ^bb12, ^bb23
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%177 : i64)
  ^bb15(%180: i64):  // 2 preds: ^bb14, ^bb22
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%182 : i64)
  ^bb17(%185: i64):  // 2 preds: ^bb16, ^bb21
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%187 : i64)
  ^bb19(%190: i64):  // 2 preds: ^bb18, ^bb20
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.add %175, %192  : i64
    %194 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.add %175, %180  : i64
    %196 = llvm.add %195, %185  : i64
    %197 = llvm.add %196, %190  : i64
    %198 = llvm.getelementptr %194[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %199 = llvm.load %198 : !llvm.ptr<i32>
    %200 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.add %193, %180  : i64
    %202 = llvm.add %201, %185  : i64
    %203 = llvm.add %202, %190  : i64
    %204 = llvm.getelementptr %200[%203] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %199, %204 : !llvm.ptr<i32>
    %205 = llvm.add %190, %189  : i64
    llvm.br ^bb19(%205 : i64)
  ^bb21:  // pred: ^bb19
    %206 = llvm.add %185, %184  : i64
    llvm.br ^bb17(%206 : i64)
  ^bb22:  // pred: ^bb17
    %207 = llvm.add %180, %179  : i64
    llvm.br ^bb15(%207 : i64)
  ^bb23:  // pred: ^bb15
    %208 = llvm.add %175, %174  : i64
    llvm.br ^bb13(%208 : i64)
  ^bb24:  // pred: ^bb13
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%209 : i64)
  ^bb25(%212: i64):  // 2 preds: ^bb24, ^bb35
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%214 : i64)
  ^bb27(%217: i64):  // 2 preds: ^bb26, ^bb34
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%219 : i64)
  ^bb29(%222: i64):  // 2 preds: ^bb28, ^bb33
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%224 : i64)
  ^bb31(%227: i64):  // 2 preds: ^bb30, ^bb32
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.add %212, %229  : i64
    %231 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.add %212, %217  : i64
    %233 = llvm.add %232, %222  : i64
    %234 = llvm.add %233, %227  : i64
    %235 = llvm.getelementptr %231[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %236 = llvm.load %235 : !llvm.ptr<i32>
    %237 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.add %230, %217  : i64
    %239 = llvm.add %238, %222  : i64
    %240 = llvm.add %239, %227  : i64
    %241 = llvm.getelementptr %237[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %236, %241 : !llvm.ptr<i32>
    %242 = llvm.add %227, %226  : i64
    llvm.br ^bb31(%242 : i64)
  ^bb33:  // pred: ^bb31
    %243 = llvm.add %222, %221  : i64
    llvm.br ^bb29(%243 : i64)
  ^bb34:  // pred: ^bb29
    %244 = llvm.add %217, %216  : i64
    llvm.br ^bb27(%244 : i64)
  ^bb35:  // pred: ^bb27
    %245 = llvm.add %212, %211  : i64
    llvm.br ^bb25(%245 : i64)
  ^bb36:  // pred: ^bb25
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%246 : i64)
  ^bb37(%249: i64):  // 2 preds: ^bb36, ^bb47
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%251 : i64)
  ^bb39(%254: i64):  // 2 preds: ^bb38, ^bb46
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%256 : i64)
  ^bb41(%259: i64):  // 2 preds: ^bb40, ^bb45
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%261 : i64)
  ^bb43(%264: i64):  // 2 preds: ^bb42, ^bb44
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %266 = llvm.mlir.constant(3 : index) : i64
    %267 = llvm.add %249, %266  : i64
    %268 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.add %249, %254  : i64
    %270 = llvm.add %269, %259  : i64
    %271 = llvm.add %270, %264  : i64
    %272 = llvm.getelementptr %268[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %273 = llvm.load %272 : !llvm.ptr<i32>
    %274 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.add %267, %254  : i64
    %276 = llvm.add %275, %259  : i64
    %277 = llvm.add %276, %264  : i64
    %278 = llvm.getelementptr %274[%277] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %273, %278 : !llvm.ptr<i32>
    %279 = llvm.add %264, %263  : i64
    llvm.br ^bb43(%279 : i64)
  ^bb45:  // pred: ^bb43
    %280 = llvm.add %259, %258  : i64
    llvm.br ^bb41(%280 : i64)
  ^bb46:  // pred: ^bb41
    %281 = llvm.add %254, %253  : i64
    llvm.br ^bb39(%281 : i64)
  ^bb47:  // pred: ^bb39
    %282 = llvm.add %249, %248  : i64
    llvm.br ^bb37(%282 : i64)
  ^bb48:  // pred: ^bb37
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.null : !llvm.ptr<i32>
    %289 = llvm.getelementptr %288[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %290 = llvm.ptrtoint %289 : !llvm.ptr<i32> to i64
    %291 = llvm.mlir.constant(16 : index) : i64
    %292 = llvm.add %290, %291  : i64
    %293 = llvm.call @malloc(%292) : (i64) -> !llvm.ptr<i8>
    %294 = llvm.bitcast %293 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i32> to i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.sub %291, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.urem %298, %291  : i64
    %300 = llvm.sub %298, %299  : i64
    %301 = llvm.inttoptr %300 : i64 to !llvm.ptr<i32>
    %302 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %303 = llvm.insertvalue %294, %302[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %301, %303[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.insertvalue %305, %304[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %283, %306[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %284, %307[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %285, %308[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %286, %309[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %287, %313[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(4 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%315 : i64)
  ^bb49(%318: i64):  // 2 preds: ^bb48, ^bb59
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%320 : i64)
  ^bb51(%323: i64):  // 2 preds: ^bb50, ^bb58
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%325 : i64)
  ^bb53(%328: i64):  // 2 preds: ^bb52, ^bb57
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%330 : i64)
  ^bb55(%333: i64):  // 2 preds: ^bb54, ^bb56
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %335 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.add %318, %323  : i64
    %337 = llvm.add %336, %328  : i64
    %338 = llvm.add %337, %333  : i64
    %339 = llvm.getelementptr %335[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %340 = llvm.load %339 : !llvm.ptr<i32>
    %341 = llvm.sub %25, %340  : i32
    %342 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.add %318, %323  : i64
    %344 = llvm.add %343, %328  : i64
    %345 = llvm.add %344, %333  : i64
    %346 = llvm.getelementptr %342[%345] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %341, %346 : !llvm.ptr<i32>
    %347 = llvm.add %333, %332  : i64
    llvm.br ^bb55(%347 : i64)
  ^bb57:  // pred: ^bb55
    %348 = llvm.add %328, %327  : i64
    llvm.br ^bb53(%348 : i64)
  ^bb58:  // pred: ^bb53
    %349 = llvm.add %323, %322  : i64
    llvm.br ^bb51(%349 : i64)
  ^bb59:  // pred: ^bb51
    %350 = llvm.add %318, %317  : i64
    llvm.br ^bb49(%350 : i64)
  ^bb60:  // pred: ^bb49
    %351 = llvm.mlir.constant(4 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.null : !llvm.ptr<i32>
    %357 = llvm.getelementptr %356[%351] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i32> to i64
    %359 = llvm.mlir.constant(16 : index) : i64
    %360 = llvm.add %358, %359  : i64
    %361 = llvm.call @malloc(%360) : (i64) -> !llvm.ptr<i8>
    %362 = llvm.bitcast %361 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i32> to i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.sub %359, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.urem %366, %359  : i64
    %368 = llvm.sub %366, %367  : i64
    %369 = llvm.inttoptr %368 : i64 to !llvm.ptr<i32>
    %370 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %371 = llvm.insertvalue %362, %370[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %369, %371[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.insertvalue %373, %372[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %351, %374[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %352, %375[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %353, %376[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %354, %377[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %352, %378[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %353, %379[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %354, %380[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %355, %381[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(4 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%383 : i64)
  ^bb61(%386: i64):  // 2 preds: ^bb60, ^bb71
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%388 : i64)
  ^bb63(%391: i64):  // 2 preds: ^bb62, ^bb70
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%393 : i64)
  ^bb65(%396: i64):  // 2 preds: ^bb64, ^bb69
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%398 : i64)
  ^bb67(%401: i64):  // 2 preds: ^bb66, ^bb68
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %403 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.add %386, %391  : i64
    %405 = llvm.add %404, %396  : i64
    %406 = llvm.add %405, %401  : i64
    %407 = llvm.getelementptr %403[%406] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %408 = llvm.load %407 : !llvm.ptr<i32>
    %409 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.add %386, %391  : i64
    %411 = llvm.add %410, %396  : i64
    %412 = llvm.add %411, %401  : i64
    %413 = llvm.getelementptr %409[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.load %413 : !llvm.ptr<i32>
    %415 = llvm.sub %408, %414  : i32
    %416 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.add %386, %391  : i64
    %418 = llvm.add %417, %396  : i64
    %419 = llvm.add %418, %401  : i64
    %420 = llvm.getelementptr %416[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %415, %420 : !llvm.ptr<i32>
    %421 = llvm.add %401, %400  : i64
    llvm.br ^bb67(%421 : i64)
  ^bb69:  // pred: ^bb67
    %422 = llvm.add %396, %395  : i64
    llvm.br ^bb65(%422 : i64)
  ^bb70:  // pred: ^bb65
    %423 = llvm.add %391, %390  : i64
    llvm.br ^bb63(%423 : i64)
  ^bb71:  // pred: ^bb63
    %424 = llvm.add %386, %385  : i64
    llvm.br ^bb61(%424 : i64)
  ^bb72:  // pred: ^bb61
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.null : !llvm.ptr<i64>
    %428 = llvm.getelementptr %427[%425] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i64> to i64
    %430 = llvm.mlir.constant(16 : index) : i64
    %431 = llvm.add %429, %430  : i64
    %432 = llvm.call @malloc(%431) : (i64) -> !llvm.ptr<i8>
    %433 = llvm.bitcast %432 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %434 = llvm.ptrtoint %433 : !llvm.ptr<i64> to i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.sub %430, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.urem %437, %430  : i64
    %439 = llvm.sub %437, %438  : i64
    %440 = llvm.inttoptr %439 : i64 to !llvm.ptr<i64>
    %441 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %442 = llvm.insertvalue %433, %441[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.insertvalue %440, %442[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.insertvalue %444, %443[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.insertvalue %425, %445[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.insertvalue %426, %446[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%448 : i64)
  ^bb73(%451: i64):  // 2 preds: ^bb72, ^bb74
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %453 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.getelementptr %453[%451] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %454 : !llvm.ptr<i64>
    %455 = llvm.add %451, %450  : i64
    llvm.br ^bb73(%455 : i64)
  ^bb75:  // pred: ^bb73
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.null : !llvm.ptr<i64>
    %459 = llvm.getelementptr %458[%456] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %460 = llvm.ptrtoint %459 : !llvm.ptr<i64> to i64
    %461 = llvm.mlir.constant(16 : index) : i64
    %462 = llvm.add %460, %461  : i64
    %463 = llvm.call @malloc(%462) : (i64) -> !llvm.ptr<i8>
    %464 = llvm.bitcast %463 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %465 = llvm.ptrtoint %464 : !llvm.ptr<i64> to i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.sub %461, %466  : i64
    %468 = llvm.add %465, %467  : i64
    %469 = llvm.urem %468, %461  : i64
    %470 = llvm.sub %468, %469  : i64
    %471 = llvm.inttoptr %470 : i64 to !llvm.ptr<i64>
    %472 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %473 = llvm.insertvalue %464, %472[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.insertvalue %471, %473[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.insertvalue %475, %474[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.insertvalue %456, %476[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.insertvalue %457, %477[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(4 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%479 : i64)
  ^bb76(%482: i64):  // 2 preds: ^bb75, ^bb77
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %484 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %485 = llvm.getelementptr %484[%482] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %486 = llvm.load %485 : !llvm.ptr<i64>
    %487 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %488 = llvm.load %487 : !llvm.ptr<i64>
    %489 = llvm.mul %486, %488  : i64
    %490 = llvm.extractvalue %478[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %491 = llvm.getelementptr %490[%482] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %489, %491 : !llvm.ptr<i64>
    %492 = llvm.add %482, %481  : i64
    llvm.br ^bb76(%492 : i64)
  ^bb78:  // pred: ^bb76
    %493 = llvm.mlir.constant(4 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.null : !llvm.ptr<i1>
    %496 = llvm.getelementptr %495[%493] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i1> to i64
    %498 = llvm.mlir.constant(16 : index) : i64
    %499 = llvm.add %497, %498  : i64
    %500 = llvm.call @malloc(%499) : (i64) -> !llvm.ptr<i8>
    %501 = llvm.bitcast %500 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i1> to i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.sub %498, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.urem %505, %498  : i64
    %507 = llvm.sub %505, %506  : i64
    %508 = llvm.inttoptr %507 : i64 to !llvm.ptr<i1>
    %509 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %510 = llvm.insertvalue %501, %509[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.insertvalue %508, %510[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.insertvalue %512, %511[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.insertvalue %493, %513[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %494, %514[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(4 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%516 : i64)
  ^bb79(%519: i64):  // 2 preds: ^bb78, ^bb80
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %521 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %522 = llvm.getelementptr %521[%519] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %523 = llvm.load %522 : !llvm.ptr<i64>
    %524 = llvm.extractvalue %478[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %525 = llvm.getelementptr %524[%519] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %526 = llvm.load %525 : !llvm.ptr<i64>
    %527 = llvm.icmp "eq" %523, %526 : i64
    %528 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.getelementptr %528[%519] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %527, %529 : !llvm.ptr<i1>
    %530 = llvm.add %519, %518  : i64
    llvm.br ^bb79(%530 : i64)
  ^bb81:  // pred: ^bb79
    %531 = llvm.mlir.constant(4 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.null : !llvm.ptr<i64>
    %534 = llvm.getelementptr %533[%531] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %535 = llvm.ptrtoint %534 : !llvm.ptr<i64> to i64
    %536 = llvm.mlir.constant(16 : index) : i64
    %537 = llvm.add %535, %536  : i64
    %538 = llvm.call @malloc(%537) : (i64) -> !llvm.ptr<i8>
    %539 = llvm.bitcast %538 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %540 = llvm.ptrtoint %539 : !llvm.ptr<i64> to i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.sub %536, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.urem %543, %536  : i64
    %545 = llvm.sub %543, %544  : i64
    %546 = llvm.inttoptr %545 : i64 to !llvm.ptr<i64>
    %547 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %548 = llvm.insertvalue %539, %547[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %549 = llvm.insertvalue %546, %548[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.insertvalue %550, %549[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %552 = llvm.insertvalue %531, %551[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.insertvalue %532, %552[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.mlir.constant(4 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%554 : i64)
  ^bb82(%557: i64):  // 2 preds: ^bb81, ^bb83
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %559 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.getelementptr %559[%557] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %561 = llvm.load %560 : !llvm.ptr<i1>
    %562 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.getelementptr %562[%557] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %564 = llvm.load %563 : !llvm.ptr<i64>
    %565 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %566 = llvm.getelementptr %565[%557] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %567 = llvm.load %566 : !llvm.ptr<i64>
    %568 = llvm.select %561, %564, %567 : i1, i64
    %569 = llvm.extractvalue %553[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.getelementptr %569[%557] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %568, %570 : !llvm.ptr<i64>
    %571 = llvm.add %557, %556  : i64
    llvm.br ^bb82(%571 : i64)
  ^bb84:  // pred: ^bb82
    %572 = llvm.extractvalue %553[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %573 = llvm.getelementptr %572[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %574 = llvm.load %573 : !llvm.ptr<i64>
    %575 = llvm.extractvalue %553[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %576 = llvm.getelementptr %575[%28] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %577 = llvm.load %576 : !llvm.ptr<i64>
    %578 = llvm.extractvalue %553[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %579 = llvm.getelementptr %578[%27] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %580 = llvm.load %579 : !llvm.ptr<i64>
    %581 = llvm.mlir.constant(4 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.mul %580, %577  : i64
    %584 = llvm.mul %583, %574  : i64
    %585 = llvm.mul %584, %581  : i64
    %586 = llvm.mlir.null : !llvm.ptr<i32>
    %587 = llvm.getelementptr %586[%585] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %588 = llvm.ptrtoint %587 : !llvm.ptr<i32> to i64
    %589 = llvm.mlir.constant(16 : index) : i64
    %590 = llvm.add %588, %589  : i64
    %591 = llvm.call @malloc(%590) : (i64) -> !llvm.ptr<i8>
    %592 = llvm.bitcast %591 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %593 = llvm.ptrtoint %592 : !llvm.ptr<i32> to i64
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.sub %589, %594  : i64
    %596 = llvm.add %593, %595  : i64
    %597 = llvm.urem %596, %589  : i64
    %598 = llvm.sub %596, %597  : i64
    %599 = llvm.inttoptr %598 : i64 to !llvm.ptr<i32>
    %600 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %601 = llvm.insertvalue %592, %600[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %602 = llvm.insertvalue %599, %601[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.insertvalue %603, %602[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %605 = llvm.insertvalue %581, %604[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.insertvalue %574, %605[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.insertvalue %577, %606[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.insertvalue %580, %607[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %584, %608[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %583, %609[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %580, %610[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.insertvalue %582, %611[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.mlir.constant(0 : index) : i64
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%613 : i64)
  ^bb85(%616: i64):  // 2 preds: ^bb84, ^bb95
    %617 = llvm.icmp "slt" %616, %614 : i64
    llvm.cond_br %617, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %618 = llvm.mlir.constant(0 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%618 : i64)
  ^bb87(%620: i64):  // 2 preds: ^bb86, ^bb94
    %621 = llvm.icmp "slt" %620, %574 : i64
    llvm.cond_br %621, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%622 : i64)
  ^bb89(%624: i64):  // 2 preds: ^bb88, ^bb93
    %625 = llvm.icmp "slt" %624, %577 : i64
    llvm.cond_br %625, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%626 : i64)
  ^bb91(%628: i64):  // 2 preds: ^bb90, ^bb92
    %629 = llvm.icmp "slt" %628, %580 : i64
    llvm.cond_br %629, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %630 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.add %616, %26  : i64
    %632 = llvm.add %631, %26  : i64
    %633 = llvm.add %632, %26  : i64
    %634 = llvm.getelementptr %630[%633] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %635 = llvm.load %634 : !llvm.ptr<i32>
    %636 = llvm.extractvalue %612[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.extractvalue %612[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.mul %616, %637  : i64
    %639 = llvm.extractvalue %612[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.mul %620, %639  : i64
    %641 = llvm.add %638, %640  : i64
    %642 = llvm.extractvalue %612[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.mul %624, %642  : i64
    %644 = llvm.add %641, %643  : i64
    %645 = llvm.add %644, %628  : i64
    %646 = llvm.getelementptr %636[%645] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %635, %646 : !llvm.ptr<i32>
    %647 = llvm.add %628, %627  : i64
    llvm.br ^bb91(%647 : i64)
  ^bb93:  // pred: ^bb91
    %648 = llvm.add %624, %623  : i64
    llvm.br ^bb89(%648 : i64)
  ^bb94:  // pred: ^bb89
    %649 = llvm.add %620, %619  : i64
    llvm.br ^bb87(%649 : i64)
  ^bb95:  // pred: ^bb87
    %650 = llvm.add %616, %615  : i64
    llvm.br ^bb85(%650 : i64)
  ^bb96:  // pred: ^bb85
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    %654 = llvm.mlir.constant(1 : index) : i64
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.null : !llvm.ptr<i1>
    %657 = llvm.getelementptr %656[%651] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %658 = llvm.ptrtoint %657 : !llvm.ptr<i1> to i64
    %659 = llvm.mlir.constant(16 : index) : i64
    %660 = llvm.add %658, %659  : i64
    %661 = llvm.call @malloc(%660) : (i64) -> !llvm.ptr<i8>
    %662 = llvm.bitcast %661 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %663 = llvm.ptrtoint %662 : !llvm.ptr<i1> to i64
    %664 = llvm.mlir.constant(1 : index) : i64
    %665 = llvm.sub %659, %664  : i64
    %666 = llvm.add %663, %665  : i64
    %667 = llvm.urem %666, %659  : i64
    %668 = llvm.sub %666, %667  : i64
    %669 = llvm.inttoptr %668 : i64 to !llvm.ptr<i1>
    %670 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %671 = llvm.insertvalue %662, %670[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.insertvalue %669, %671[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.mlir.constant(0 : index) : i64
    %674 = llvm.insertvalue %673, %672[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %651, %674[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %652, %675[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %653, %676[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.insertvalue %654, %677[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.insertvalue %652, %678[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.insertvalue %653, %679[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.insertvalue %654, %680[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.insertvalue %655, %681[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %683 = llvm.mlir.constant(0 : index) : i64
    %684 = llvm.mlir.constant(4 : index) : i64
    %685 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%683 : i64)
  ^bb97(%686: i64):  // 2 preds: ^bb96, ^bb107
    %687 = llvm.icmp "slt" %686, %684 : i64
    llvm.cond_br %687, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %688 = llvm.mlir.constant(0 : index) : i64
    %689 = llvm.mlir.constant(1 : index) : i64
    %690 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%688 : i64)
  ^bb99(%691: i64):  // 2 preds: ^bb98, ^bb106
    %692 = llvm.icmp "slt" %691, %689 : i64
    llvm.cond_br %692, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %693 = llvm.mlir.constant(0 : index) : i64
    %694 = llvm.mlir.constant(1 : index) : i64
    %695 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%693 : i64)
  ^bb101(%696: i64):  // 2 preds: ^bb100, ^bb105
    %697 = llvm.icmp "slt" %696, %694 : i64
    llvm.cond_br %697, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %698 = llvm.mlir.constant(0 : index) : i64
    %699 = llvm.mlir.constant(1 : index) : i64
    %700 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%698 : i64)
  ^bb103(%701: i64):  // 2 preds: ^bb102, ^bb104
    %702 = llvm.icmp "slt" %701, %699 : i64
    llvm.cond_br %702, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %703 = llvm.extractvalue %612[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.extractvalue %612[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.mul %686, %704  : i64
    %706 = llvm.extractvalue %612[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.mul %691, %706  : i64
    %708 = llvm.add %705, %707  : i64
    %709 = llvm.extractvalue %612[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.mul %696, %709  : i64
    %711 = llvm.add %708, %710  : i64
    %712 = llvm.add %711, %701  : i64
    %713 = llvm.getelementptr %703[%712] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %714 = llvm.load %713 : !llvm.ptr<i32>
    %715 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %716 = llvm.add %686, %26  : i64
    %717 = llvm.add %716, %26  : i64
    %718 = llvm.add %717, %26  : i64
    %719 = llvm.getelementptr %715[%718] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %720 = llvm.load %719 : !llvm.ptr<i32>
    %721 = llvm.icmp "sgt" %714, %720 : i32
    %722 = llvm.extractvalue %682[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.add %686, %691  : i64
    %724 = llvm.add %723, %696  : i64
    %725 = llvm.add %724, %701  : i64
    %726 = llvm.getelementptr %722[%725] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %721, %726 : !llvm.ptr<i1>
    %727 = llvm.add %701, %700  : i64
    llvm.br ^bb103(%727 : i64)
  ^bb105:  // pred: ^bb103
    %728 = llvm.add %696, %695  : i64
    llvm.br ^bb101(%728 : i64)
  ^bb106:  // pred: ^bb101
    %729 = llvm.add %691, %690  : i64
    llvm.br ^bb99(%729 : i64)
  ^bb107:  // pred: ^bb99
    %730 = llvm.add %686, %685  : i64
    llvm.br ^bb97(%730 : i64)
  ^bb108:  // pred: ^bb97
    llvm.return %682 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v8_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.mlir.constant(8 : i64) : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr<i8>
    %89 = llvm.bitcast %88 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.call @omTensorCreateUntyped(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %85[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %95 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%91, %92, %94, %96) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %97 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%91, %97) : (!llvm.ptr<i8>, i64) -> ()
    %98 = llvm.call @omTensorGetShape(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.call @omTensorGetStrides(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.mlir.constant(0 : i64) : i64
    %101 = llvm.extractvalue %85[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %98[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %85[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %99[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %85[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %98[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %85[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %99[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(2 : i64) : i64
    %111 = llvm.extractvalue %85[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %98[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %85[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %99[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(3 : i64) : i64
    %116 = llvm.extractvalue %85[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %98[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %85[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %99[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(0 : i64) : i64
    %121 = llvm.getelementptr %89[%120] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %91, %121 : !llvm.ptr<ptr<i8>>
    %122 = llvm.call @omTensorListCreate(%89, %86, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %122 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

