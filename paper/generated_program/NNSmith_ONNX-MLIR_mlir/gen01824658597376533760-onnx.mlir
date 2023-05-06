module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 3 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 3] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 3, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 3, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v6_0", "v0_0", "v1_0"]} {
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
    %24 = llvm.mlir.constant(-2147483648 : i32) : i32
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.mlir.constant(-1 : i64) : i64
    %27 = llvm.mlir.constant(1 : i64) : i64
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %47 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %58 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(3 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(3 : index) : i64
    %87 = llvm.mlir.constant(3 : index) : i64
    %88 = llvm.mlir.null : !llvm.ptr<i32>
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i32> to i64
    %91 = llvm.mlir.constant(16 : index) : i64
    %92 = llvm.add %90, %91  : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.bitcast %93 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i32> to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %91, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.urem %98, %91  : i64
    %100 = llvm.sub %98, %99  : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr<i32>
    %102 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %81, %106[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %82, %107[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %83, %108[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %84, %109[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %86, %110[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %83, %111[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %84, %112[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %85, %113[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%115 : i64)
  ^bb1(%118: i64):  // 2 preds: ^bb0, ^bb11
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%120 : i64)
  ^bb3(%123: i64):  // 2 preds: ^bb2, ^bb10
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%125 : i64)
  ^bb5(%128: i64):  // 2 preds: ^bb4, ^bb9
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%130 : i64)
  ^bb7(%133: i64):  // 2 preds: ^bb6, ^bb8
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %135 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.add %118, %123  : i64
    %137 = llvm.add %136, %128  : i64
    %138 = llvm.add %137, %133  : i64
    %139 = llvm.getelementptr %135[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(3 : index) : i64
    %143 = llvm.mul %118, %142  : i64
    %144 = llvm.mlir.constant(3 : index) : i64
    %145 = llvm.mul %123, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.add %146, %128  : i64
    %148 = llvm.add %147, %133  : i64
    %149 = llvm.getelementptr %141[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %140, %149 : !llvm.ptr<i32>
    %150 = llvm.add %133, %132  : i64
    llvm.br ^bb7(%150 : i64)
  ^bb9:  // pred: ^bb7
    %151 = llvm.add %128, %127  : i64
    llvm.br ^bb5(%151 : i64)
  ^bb10:  // pred: ^bb5
    %152 = llvm.add %123, %122  : i64
    llvm.br ^bb3(%152 : i64)
  ^bb11:  // pred: ^bb3
    %153 = llvm.add %118, %117  : i64
    llvm.br ^bb1(%153 : i64)
  ^bb12:  // pred: ^bb1
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%154 : i64)
  ^bb13(%157: i64):  // 2 preds: ^bb12, ^bb23
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%159 : i64)
  ^bb15(%162: i64):  // 2 preds: ^bb14, ^bb22
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%164 : i64)
  ^bb17(%167: i64):  // 2 preds: ^bb16, ^bb21
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%169 : i64)
  ^bb19(%172: i64):  // 2 preds: ^bb18, ^bb20
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.add %167, %174  : i64
    %176 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.add %157, %162  : i64
    %178 = llvm.add %177, %167  : i64
    %179 = llvm.add %178, %172  : i64
    %180 = llvm.getelementptr %176[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %181 = llvm.load %180 : !llvm.ptr<i32>
    %182 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(3 : index) : i64
    %184 = llvm.mul %157, %183  : i64
    %185 = llvm.mlir.constant(3 : index) : i64
    %186 = llvm.mul %162, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.add %187, %175  : i64
    %189 = llvm.add %188, %172  : i64
    %190 = llvm.getelementptr %182[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %181, %190 : !llvm.ptr<i32>
    %191 = llvm.add %172, %171  : i64
    llvm.br ^bb19(%191 : i64)
  ^bb21:  // pred: ^bb19
    %192 = llvm.add %167, %166  : i64
    llvm.br ^bb17(%192 : i64)
  ^bb22:  // pred: ^bb17
    %193 = llvm.add %162, %161  : i64
    llvm.br ^bb15(%193 : i64)
  ^bb23:  // pred: ^bb15
    %194 = llvm.add %157, %156  : i64
    llvm.br ^bb13(%194 : i64)
  ^bb24:  // pred: ^bb13
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%195 : i64)
  ^bb25(%198: i64):  // 2 preds: ^bb24, ^bb35
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%200 : i64)
  ^bb27(%203: i64):  // 2 preds: ^bb26, ^bb34
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%205 : i64)
  ^bb29(%208: i64):  // 2 preds: ^bb28, ^bb33
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%210 : i64)
  ^bb31(%213: i64):  // 2 preds: ^bb30, ^bb32
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.add %208, %215  : i64
    %217 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.add %198, %203  : i64
    %219 = llvm.add %218, %208  : i64
    %220 = llvm.add %219, %213  : i64
    %221 = llvm.getelementptr %217[%220] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %222 = llvm.load %221 : !llvm.ptr<i32>
    %223 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(3 : index) : i64
    %225 = llvm.mul %198, %224  : i64
    %226 = llvm.mlir.constant(3 : index) : i64
    %227 = llvm.mul %203, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %216  : i64
    %230 = llvm.add %229, %213  : i64
    %231 = llvm.getelementptr %223[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %222, %231 : !llvm.ptr<i32>
    %232 = llvm.add %213, %212  : i64
    llvm.br ^bb31(%232 : i64)
  ^bb33:  // pred: ^bb31
    %233 = llvm.add %208, %207  : i64
    llvm.br ^bb29(%233 : i64)
  ^bb34:  // pred: ^bb29
    %234 = llvm.add %203, %202  : i64
    llvm.br ^bb27(%234 : i64)
  ^bb35:  // pred: ^bb27
    %235 = llvm.add %198, %197  : i64
    llvm.br ^bb25(%235 : i64)
  ^bb36:  // pred: ^bb25
    %236 = llvm.mlir.constant(4 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.null : !llvm.ptr<i64>
    %239 = llvm.getelementptr %238[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %240 = llvm.ptrtoint %239 : !llvm.ptr<i64> to i64
    %241 = llvm.mlir.constant(16 : index) : i64
    %242 = llvm.add %240, %241  : i64
    %243 = llvm.call @malloc(%242) : (i64) -> !llvm.ptr<i8>
    %244 = llvm.bitcast %243 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %245 = llvm.ptrtoint %244 : !llvm.ptr<i64> to i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.sub %241, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.urem %248, %241  : i64
    %250 = llvm.sub %248, %249  : i64
    %251 = llvm.inttoptr %250 : i64 to !llvm.ptr<i64>
    %252 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %253 = llvm.insertvalue %244, %252[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %251, %253[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.insertvalue %255, %254[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %236, %256[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.insertvalue %237, %257[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%259 : i64)
  ^bb37(%262: i64):  // 2 preds: ^bb36, ^bb38
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %264 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.getelementptr %264[%262] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %27, %265 : !llvm.ptr<i64>
    %266 = llvm.add %262, %261  : i64
    llvm.br ^bb37(%266 : i64)
  ^bb39:  // pred: ^bb37
    %267 = llvm.mlir.constant(4 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.null : !llvm.ptr<i64>
    %270 = llvm.getelementptr %269[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %271 = llvm.ptrtoint %270 : !llvm.ptr<i64> to i64
    %272 = llvm.mlir.constant(16 : index) : i64
    %273 = llvm.add %271, %272  : i64
    %274 = llvm.call @malloc(%273) : (i64) -> !llvm.ptr<i8>
    %275 = llvm.bitcast %274 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %276 = llvm.ptrtoint %275 : !llvm.ptr<i64> to i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.sub %272, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.urem %279, %272  : i64
    %281 = llvm.sub %279, %280  : i64
    %282 = llvm.inttoptr %281 : i64 to !llvm.ptr<i64>
    %283 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %284 = llvm.insertvalue %275, %283[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %282, %284[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.insertvalue %286, %285[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.insertvalue %267, %287[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %268, %288[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%290 : i64)
  ^bb40(%293: i64):  // 2 preds: ^bb39, ^bb41
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %295 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %297 = llvm.load %296 : !llvm.ptr<i64>
    %298 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %299 = llvm.load %298 : !llvm.ptr<i64>
    %300 = llvm.mul %297, %299  : i64
    %301 = llvm.extractvalue %289[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.getelementptr %301[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %300, %302 : !llvm.ptr<i64>
    %303 = llvm.add %293, %292  : i64
    llvm.br ^bb40(%303 : i64)
  ^bb42:  // pred: ^bb40
    %304 = llvm.mlir.constant(4 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.null : !llvm.ptr<i1>
    %307 = llvm.getelementptr %306[%304] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i1> to i64
    %309 = llvm.mlir.constant(16 : index) : i64
    %310 = llvm.add %308, %309  : i64
    %311 = llvm.call @malloc(%310) : (i64) -> !llvm.ptr<i8>
    %312 = llvm.bitcast %311 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %313 = llvm.ptrtoint %312 : !llvm.ptr<i1> to i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.sub %309, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.urem %316, %309  : i64
    %318 = llvm.sub %316, %317  : i64
    %319 = llvm.inttoptr %318 : i64 to !llvm.ptr<i1>
    %320 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %321 = llvm.insertvalue %312, %320[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %304, %324[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %305, %325[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%327 : i64)
  ^bb43(%330: i64):  // 2 preds: ^bb42, ^bb44
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %332 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.getelementptr %332[%330] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.extractvalue %289[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.getelementptr %335[%330] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %337 = llvm.load %336 : !llvm.ptr<i64>
    %338 = llvm.icmp "eq" %334, %337 : i64
    %339 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.getelementptr %339[%330] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %338, %340 : !llvm.ptr<i1>
    %341 = llvm.add %330, %329  : i64
    llvm.br ^bb43(%341 : i64)
  ^bb45:  // pred: ^bb43
    %342 = llvm.mlir.constant(4 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.null : !llvm.ptr<i64>
    %345 = llvm.getelementptr %344[%342] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i64> to i64
    %347 = llvm.mlir.constant(16 : index) : i64
    %348 = llvm.add %346, %347  : i64
    %349 = llvm.call @malloc(%348) : (i64) -> !llvm.ptr<i8>
    %350 = llvm.bitcast %349 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %351 = llvm.ptrtoint %350 : !llvm.ptr<i64> to i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.sub %347, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.urem %354, %347  : i64
    %356 = llvm.sub %354, %355  : i64
    %357 = llvm.inttoptr %356 : i64 to !llvm.ptr<i64>
    %358 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %359 = llvm.insertvalue %350, %358[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.insertvalue %357, %359[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.insertvalue %361, %360[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.insertvalue %342, %362[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.insertvalue %343, %363[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(4 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%365 : i64)
  ^bb46(%368: i64):  // 2 preds: ^bb45, ^bb47
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %370 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%368] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %372 = llvm.load %371 : !llvm.ptr<i1>
    %373 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.getelementptr %373[%368] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %375 = llvm.load %374 : !llvm.ptr<i64>
    %376 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.getelementptr %376[%368] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %378 = llvm.load %377 : !llvm.ptr<i64>
    %379 = llvm.select %372, %375, %378 : i1, i64
    %380 = llvm.extractvalue %364[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.getelementptr %380[%368] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %379, %381 : !llvm.ptr<i64>
    %382 = llvm.add %368, %367  : i64
    llvm.br ^bb46(%382 : i64)
  ^bb48:  // pred: ^bb46
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(3 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(3 : index) : i64
    %389 = llvm.mlir.constant(3 : index) : i64
    %390 = llvm.mlir.null : !llvm.ptr<i32>
    %391 = llvm.getelementptr %390[%389] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i32> to i64
    %393 = llvm.mlir.constant(16 : index) : i64
    %394 = llvm.add %392, %393  : i64
    %395 = llvm.call @malloc(%394) : (i64) -> !llvm.ptr<i8>
    %396 = llvm.bitcast %395 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %397 = llvm.ptrtoint %396 : !llvm.ptr<i32> to i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.sub %393, %398  : i64
    %400 = llvm.add %397, %399  : i64
    %401 = llvm.urem %400, %393  : i64
    %402 = llvm.sub %400, %401  : i64
    %403 = llvm.inttoptr %402 : i64 to !llvm.ptr<i32>
    %404 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %405 = llvm.insertvalue %396, %404[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %403, %405[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.insertvalue %407, %406[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %383, %408[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %384, %409[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %385, %410[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %386, %411[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %388, %412[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %385, %413[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %386, %414[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %387, %415[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%417 : i64)
  ^bb49(%420: i64):  // 2 preds: ^bb48, ^bb59
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%422 : i64)
  ^bb51(%425: i64):  // 2 preds: ^bb50, ^bb58
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(3 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%427 : i64)
  ^bb53(%430: i64):  // 2 preds: ^bb52, ^bb57
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%432 : i64)
  ^bb55(%435: i64):  // 2 preds: ^bb54, ^bb56
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %437 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(3 : index) : i64
    %439 = llvm.mul %28, %438  : i64
    %440 = llvm.mlir.constant(3 : index) : i64
    %441 = llvm.mul %28, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.add %442, %430  : i64
    %444 = llvm.add %443, %28  : i64
    %445 = llvm.getelementptr %437[%444] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %446 = llvm.load %445 : !llvm.ptr<i32>
    %447 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(3 : index) : i64
    %449 = llvm.mul %420, %448  : i64
    %450 = llvm.mlir.constant(3 : index) : i64
    %451 = llvm.mul %425, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.add %452, %430  : i64
    %454 = llvm.add %453, %435  : i64
    %455 = llvm.getelementptr %447[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %446, %455 : !llvm.ptr<i32>
    %456 = llvm.add %435, %434  : i64
    llvm.br ^bb55(%456 : i64)
  ^bb57:  // pred: ^bb55
    %457 = llvm.add %430, %429  : i64
    llvm.br ^bb53(%457 : i64)
  ^bb58:  // pred: ^bb53
    %458 = llvm.add %425, %424  : i64
    llvm.br ^bb51(%458 : i64)
  ^bb59:  // pred: ^bb51
    %459 = llvm.add %420, %419  : i64
    llvm.br ^bb49(%459 : i64)
  ^bb60:  // pred: ^bb49
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(3 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(3 : index) : i64
    %465 = llvm.mlir.constant(3 : index) : i64
    %466 = llvm.mlir.null : !llvm.ptr<i64>
    %467 = llvm.getelementptr %466[%465] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %468 = llvm.ptrtoint %467 : !llvm.ptr<i64> to i64
    %469 = llvm.mlir.constant(16 : index) : i64
    %470 = llvm.add %468, %469  : i64
    %471 = llvm.call @malloc(%470) : (i64) -> !llvm.ptr<i8>
    %472 = llvm.bitcast %471 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %473 = llvm.ptrtoint %472 : !llvm.ptr<i64> to i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.sub %469, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.urem %476, %469  : i64
    %478 = llvm.sub %476, %477  : i64
    %479 = llvm.inttoptr %478 : i64 to !llvm.ptr<i64>
    %480 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %481 = llvm.insertvalue %472, %480[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %482 = llvm.insertvalue %479, %481[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.insertvalue %483, %482[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %485 = llvm.insertvalue %460, %484[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %486 = llvm.insertvalue %461, %485[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %487 = llvm.insertvalue %462, %486[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %488 = llvm.insertvalue %464, %487[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %489 = llvm.insertvalue %462, %488[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %490 = llvm.insertvalue %463, %489[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%491 : i64)
  ^bb61(%494: i64):  // 2 preds: ^bb60, ^bb68
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%496 : i64)
  ^bb63(%499: i64):  // 2 preds: ^bb62, ^bb67
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(3 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%501 : i64)
  ^bb65(%504: i64):  // 2 preds: ^bb64, ^bb66
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %506 = llvm.extractvalue %490[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.mlir.constant(3 : index) : i64
    %508 = llvm.mul %494, %507  : i64
    %509 = llvm.mlir.constant(3 : index) : i64
    %510 = llvm.mul %499, %509  : i64
    %511 = llvm.add %508, %510  : i64
    %512 = llvm.add %511, %504  : i64
    %513 = llvm.getelementptr %506[%512] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %513 : !llvm.ptr<i64>
    %514 = llvm.add %504, %503  : i64
    llvm.br ^bb65(%514 : i64)
  ^bb67:  // pred: ^bb65
    %515 = llvm.add %499, %498  : i64
    llvm.br ^bb63(%515 : i64)
  ^bb68:  // pred: ^bb63
    %516 = llvm.add %494, %493  : i64
    llvm.br ^bb61(%516 : i64)
  ^bb69:  // pred: ^bb61
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%517 : i64)
  ^bb70(%520: i64):  // 2 preds: ^bb69, ^bb80
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%522 : i64)
  ^bb72(%525: i64):  // 2 preds: ^bb71, ^bb79
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(3 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%527 : i64)
  ^bb74(%530: i64):  // 2 preds: ^bb73, ^bb78
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%532 : i64)
  ^bb76(%535: i64):  // 2 preds: ^bb75, ^bb77
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %537 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.mlir.constant(3 : index) : i64
    %539 = llvm.mul %520, %538  : i64
    %540 = llvm.mlir.constant(3 : index) : i64
    %541 = llvm.mul %525, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.add %542, %530  : i64
    %544 = llvm.add %543, %535  : i64
    %545 = llvm.getelementptr %537[%544] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %546 = llvm.load %545 : !llvm.ptr<i32>
    %547 = llvm.extractvalue %490[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.mlir.constant(3 : index) : i64
    %549 = llvm.mul %520, %548  : i64
    %550 = llvm.mlir.constant(3 : index) : i64
    %551 = llvm.mul %525, %550  : i64
    %552 = llvm.add %549, %551  : i64
    %553 = llvm.add %552, %530  : i64
    %554 = llvm.getelementptr %547[%553] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %555 = llvm.load %554 : !llvm.ptr<i64>
    %556 = llvm.icmp "slt" %555, %25 : i64
    %557 = llvm.select %556, %25, %555 : i1, i64
    %558 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.mlir.constant(3 : index) : i64
    %560 = llvm.mul %520, %559  : i64
    %561 = llvm.mlir.constant(3 : index) : i64
    %562 = llvm.mul %525, %561  : i64
    %563 = llvm.add %560, %562  : i64
    %564 = llvm.add %563, %530  : i64
    %565 = llvm.add %564, %557  : i64
    %566 = llvm.getelementptr %558[%565] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %567 = llvm.load %566 : !llvm.ptr<i32>
    %568 = llvm.icmp "sgt" %546, %567 : i32
    %569 = llvm.select %568, %535, %557 : i1, i64
    %570 = llvm.extractvalue %490[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.mlir.constant(3 : index) : i64
    %572 = llvm.mul %520, %571  : i64
    %573 = llvm.mlir.constant(3 : index) : i64
    %574 = llvm.mul %525, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.add %575, %530  : i64
    %577 = llvm.getelementptr %570[%576] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %569, %577 : !llvm.ptr<i64>
    %578 = llvm.add %535, %534  : i64
    llvm.br ^bb76(%578 : i64)
  ^bb78:  // pred: ^bb76
    %579 = llvm.add %530, %529  : i64
    llvm.br ^bb74(%579 : i64)
  ^bb79:  // pred: ^bb74
    %580 = llvm.add %525, %524  : i64
    llvm.br ^bb72(%580 : i64)
  ^bb80:  // pred: ^bb72
    %581 = llvm.add %520, %519  : i64
    llvm.br ^bb70(%581 : i64)
  ^bb81:  // pred: ^bb70
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.mlir.constant(3 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.mlir.constant(3 : index) : i64
    %587 = llvm.mlir.null : !llvm.ptr<i32>
    %588 = llvm.getelementptr %587[%586] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %589 = llvm.ptrtoint %588 : !llvm.ptr<i32> to i64
    %590 = llvm.mlir.constant(16 : index) : i64
    %591 = llvm.add %589, %590  : i64
    %592 = llvm.call @malloc(%591) : (i64) -> !llvm.ptr<i8>
    %593 = llvm.bitcast %592 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %594 = llvm.ptrtoint %593 : !llvm.ptr<i32> to i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.sub %590, %595  : i64
    %597 = llvm.add %594, %596  : i64
    %598 = llvm.urem %597, %590  : i64
    %599 = llvm.sub %597, %598  : i64
    %600 = llvm.inttoptr %599 : i64 to !llvm.ptr<i32>
    %601 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %602 = llvm.insertvalue %593, %601[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %603 = llvm.insertvalue %600, %602[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.insertvalue %604, %603[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %606 = llvm.insertvalue %582, %605[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %607 = llvm.insertvalue %583, %606[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %608 = llvm.insertvalue %584, %607[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %609 = llvm.insertvalue %583, %608[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %610 = llvm.insertvalue %584, %609[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %611 = llvm.insertvalue %585, %610[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%612 : i64)
  ^bb82(%615: i64):  // 2 preds: ^bb81, ^bb89
    %616 = llvm.icmp "slt" %615, %613 : i64
    llvm.cond_br %616, ^bb83, ^bb90
  ^bb83:  // pred: ^bb82
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(3 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%617 : i64)
  ^bb84(%620: i64):  // 2 preds: ^bb83, ^bb88
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb85, ^bb89
  ^bb85:  // pred: ^bb84
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%622 : i64)
  ^bb86(%625: i64):  // 2 preds: ^bb85, ^bb87
    %626 = llvm.icmp "slt" %625, %623 : i64
    llvm.cond_br %626, ^bb87, ^bb88
  ^bb87:  // pred: ^bb86
    %627 = llvm.extractvalue %611[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %628 = llvm.mlir.constant(3 : index) : i64
    %629 = llvm.mul %615, %628  : i64
    %630 = llvm.add %629, %620  : i64
    %631 = llvm.add %630, %625  : i64
    %632 = llvm.getelementptr %627[%631] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %24, %632 : !llvm.ptr<i32>
    %633 = llvm.add %625, %624  : i64
    llvm.br ^bb86(%633 : i64)
  ^bb88:  // pred: ^bb86
    %634 = llvm.add %620, %619  : i64
    llvm.br ^bb84(%634 : i64)
  ^bb89:  // pred: ^bb84
    %635 = llvm.add %615, %614  : i64
    llvm.br ^bb82(%635 : i64)
  ^bb90:  // pred: ^bb82
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%636 : i64)
  ^bb91(%639: i64):  // 2 preds: ^bb90, ^bb101
    %640 = llvm.icmp "slt" %639, %637 : i64
    llvm.cond_br %640, ^bb92, ^bb102
  ^bb92:  // pred: ^bb91
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%641 : i64)
  ^bb93(%644: i64):  // 2 preds: ^bb92, ^bb100
    %645 = llvm.icmp "slt" %644, %642 : i64
    llvm.cond_br %645, ^bb94, ^bb101
  ^bb94:  // pred: ^bb93
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(3 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%646 : i64)
  ^bb95(%649: i64):  // 2 preds: ^bb94, ^bb99
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb96, ^bb100
  ^bb96:  // pred: ^bb95
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%651 : i64)
  ^bb97(%654: i64):  // 2 preds: ^bb96, ^bb98
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %656 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %657 = llvm.mlir.constant(3 : index) : i64
    %658 = llvm.mul %639, %657  : i64
    %659 = llvm.mlir.constant(3 : index) : i64
    %660 = llvm.mul %644, %659  : i64
    %661 = llvm.add %658, %660  : i64
    %662 = llvm.add %661, %649  : i64
    %663 = llvm.add %662, %654  : i64
    %664 = llvm.getelementptr %656[%663] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %665 = llvm.load %664 : !llvm.ptr<i32>
    %666 = llvm.extractvalue %611[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %667 = llvm.mlir.constant(3 : index) : i64
    %668 = llvm.mul %639, %667  : i64
    %669 = llvm.add %668, %649  : i64
    %670 = llvm.add %669, %654  : i64
    %671 = llvm.getelementptr %666[%670] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %672 = llvm.load %671 : !llvm.ptr<i32>
    %673 = llvm.icmp "sgt" %672, %665 : i32
    %674 = llvm.select %673, %672, %665 : i1, i32
    %675 = llvm.extractvalue %611[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %676 = llvm.mlir.constant(3 : index) : i64
    %677 = llvm.mul %639, %676  : i64
    %678 = llvm.add %677, %649  : i64
    %679 = llvm.add %678, %654  : i64
    %680 = llvm.getelementptr %675[%679] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %674, %680 : !llvm.ptr<i32>
    %681 = llvm.add %654, %653  : i64
    llvm.br ^bb97(%681 : i64)
  ^bb99:  // pred: ^bb97
    %682 = llvm.add %649, %648  : i64
    llvm.br ^bb95(%682 : i64)
  ^bb100:  // pred: ^bb95
    %683 = llvm.add %644, %643  : i64
    llvm.br ^bb93(%683 : i64)
  ^bb101:  // pred: ^bb93
    %684 = llvm.add %639, %638  : i64
    llvm.br ^bb91(%684 : i64)
  ^bb102:  // pred: ^bb91
    %685 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %686 = llvm.insertvalue %80, %685[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %687 = llvm.insertvalue %416, %686[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %688 = llvm.insertvalue %490, %687[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %689 = llvm.insertvalue %611, %688[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %689 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v6_0", "v0_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %89 = llvm.extractvalue %85[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.mlir.constant(32 : i64) : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %94 = llvm.mlir.constant(4 : i64) : i64
    %95 = llvm.call @omTensorCreateUntyped(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.mlir.constant(0 : i64) : i64
    %97 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %99 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%95, %96, %98, %100) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %101 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%95, %101) : (!llvm.ptr<i8>, i64) -> ()
    %102 = llvm.call @omTensorGetShape(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.call @omTensorGetStrides(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.mlir.constant(0 : i64) : i64
    %105 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %102[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %103[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %102[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %103[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(2 : i64) : i64
    %115 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %102[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %103[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %102[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %103[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(0 : i64) : i64
    %125 = llvm.getelementptr %93[%124] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %95, %125 : !llvm.ptr<ptr<i8>>
    %126 = llvm.mlir.constant(4 : i64) : i64
    %127 = llvm.call @omTensorCreateUntyped(%126) : (i64) -> !llvm.ptr<i8>
    %128 = llvm.mlir.constant(1 : i64) : i64
    %129 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %131 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.bitcast %131 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%127, %128, %130, %132) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %133 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%127, %133) : (!llvm.ptr<i8>, i64) -> ()
    %134 = llvm.call @omTensorGetShape(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %135 = llvm.call @omTensorGetStrides(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %136 = llvm.mlir.constant(0 : i64) : i64
    %137 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %134[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %135[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(1 : i64) : i64
    %142 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %134[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %135[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %134[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %135[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(3 : i64) : i64
    %152 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %134[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %135[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.getelementptr %93[%156] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %127, %157 : !llvm.ptr<ptr<i8>>
    %158 = llvm.mlir.constant(3 : i64) : i64
    %159 = llvm.call @omTensorCreateUntyped(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.mlir.constant(1 : i64) : i64
    %161 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %162 = llvm.bitcast %161 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %163 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.bitcast %163 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%159, %160, %162, %164) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %165 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%159, %165) : (!llvm.ptr<i8>, i64) -> ()
    %166 = llvm.call @omTensorGetShape(%159) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %167 = llvm.call @omTensorGetStrides(%159) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %168 = llvm.mlir.constant(0 : i64) : i64
    %169 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.getelementptr %166[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.getelementptr %167[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.mlir.constant(1 : i64) : i64
    %174 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.getelementptr %166[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %174, %175 : !llvm.ptr<i64>
    %176 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.getelementptr %167[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.mlir.constant(2 : i64) : i64
    %179 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %180 = llvm.getelementptr %166[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %182 = llvm.getelementptr %167[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.mlir.constant(2 : i64) : i64
    %184 = llvm.getelementptr %93[%183] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %159, %184 : !llvm.ptr<ptr<i8>>
    %185 = llvm.mlir.constant(3 : i64) : i64
    %186 = llvm.call @omTensorCreateUntyped(%185) : (i64) -> !llvm.ptr<i8>
    %187 = llvm.mlir.constant(1 : i64) : i64
    %188 = llvm.extractvalue %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.bitcast %188 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %190 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.bitcast %190 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%186, %187, %189, %191) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %192 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%186, %192) : (!llvm.ptr<i8>, i64) -> ()
    %193 = llvm.call @omTensorGetShape(%186) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %194 = llvm.call @omTensorGetStrides(%186) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %195 = llvm.mlir.constant(0 : i64) : i64
    %196 = llvm.extractvalue %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %197 = llvm.getelementptr %193[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %89[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %199 = llvm.getelementptr %194[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %198, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(1 : i64) : i64
    %201 = llvm.extractvalue %89[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %202 = llvm.getelementptr %193[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %89[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %204 = llvm.getelementptr %194[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %203, %204 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(2 : i64) : i64
    %206 = llvm.extractvalue %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %207 = llvm.getelementptr %193[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %207 : !llvm.ptr<i64>
    %208 = llvm.extractvalue %89[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.getelementptr %194[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %208, %209 : !llvm.ptr<i64>
    %210 = llvm.mlir.constant(3 : i64) : i64
    %211 = llvm.getelementptr %93[%210] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %186, %211 : !llvm.ptr<ptr<i8>>
    %212 = llvm.call @omTensorListCreate(%93, %90, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %212 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<273 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<273 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

