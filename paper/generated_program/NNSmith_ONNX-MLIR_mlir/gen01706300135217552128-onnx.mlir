module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[2, 2, 1]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 2, 1]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0", "v1_0"]} {
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
    %25 = llvm.mlir.constant(2147483647 : i32) : i32
    %26 = llvm.mlir.constant(0 : i32) : i32
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(3 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<3 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(3 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(4 : index) : i64
    %63 = llvm.mlir.null : !llvm.ptr<i32>
    %64 = llvm.getelementptr %63[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %65 = llvm.ptrtoint %64 : !llvm.ptr<i32> to i64
    %66 = llvm.mlir.constant(16 : index) : i64
    %67 = llvm.add %65, %66  : i64
    %68 = llvm.call @malloc(%67) : (i64) -> !llvm.ptr<i8>
    %69 = llvm.bitcast %68 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i32> to i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.sub %66, %71  : i64
    %73 = llvm.add %70, %72  : i64
    %74 = llvm.urem %73, %66  : i64
    %75 = llvm.sub %73, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr<i32>
    %77 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %78 = llvm.insertvalue %69, %77[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %57, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %58, %82[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %59, %83[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %60, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %58, %85[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %59, %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %60, %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %61, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%90 : i64)
  ^bb1(%93: i64):  // 2 preds: ^bb0, ^bb11
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%95 : i64)
  ^bb3(%98: i64):  // 2 preds: ^bb2, ^bb10
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%100 : i64)
  ^bb5(%103: i64):  // 2 preds: ^bb4, ^bb9
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%105 : i64)
  ^bb7(%108: i64):  // 2 preds: ^bb6, ^bb8
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %110 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.add %27, %27  : i64
    %112 = llvm.add %111, %103  : i64
    %113 = llvm.add %112, %108  : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.load %114 : !llvm.ptr<i32>
    %116 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mul %93, %117  : i64
    %119 = llvm.add %118, %98  : i64
    %120 = llvm.add %119, %103  : i64
    %121 = llvm.add %120, %108  : i64
    %122 = llvm.getelementptr %116[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.icmp "sgt" %115, %123 : i32
    %125 = llvm.select %124, %115, %123 : i1, i32
    %126 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %93, %127  : i64
    %129 = llvm.add %128, %98  : i64
    %130 = llvm.add %129, %103  : i64
    %131 = llvm.add %130, %108  : i64
    %132 = llvm.getelementptr %126[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %125, %132 : !llvm.ptr<i32>
    %133 = llvm.add %108, %107  : i64
    llvm.br ^bb7(%133 : i64)
  ^bb9:  // pred: ^bb7
    %134 = llvm.add %103, %102  : i64
    llvm.br ^bb5(%134 : i64)
  ^bb10:  // pred: ^bb5
    %135 = llvm.add %98, %97  : i64
    llvm.br ^bb3(%135 : i64)
  ^bb11:  // pred: ^bb3
    %136 = llvm.add %93, %92  : i64
    llvm.br ^bb1(%136 : i64)
  ^bb12:  // pred: ^bb1
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(4 : index) : i64
    %143 = llvm.mlir.null : !llvm.ptr<i32>
    %144 = llvm.getelementptr %143[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.ptrtoint %144 : !llvm.ptr<i32> to i64
    %146 = llvm.mlir.constant(16 : index) : i64
    %147 = llvm.add %145, %146  : i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr<i8>
    %149 = llvm.bitcast %148 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i32> to i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.sub %146, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.urem %153, %146  : i64
    %155 = llvm.sub %153, %154  : i64
    %156 = llvm.inttoptr %155 : i64 to !llvm.ptr<i32>
    %157 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %158 = llvm.insertvalue %149, %157[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %156, %158[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.insertvalue %160, %159[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %137, %161[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %138, %162[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %139, %163[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %140, %164[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %138, %165[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %139, %166[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %140, %167[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %141, %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%170 : i64)
  ^bb13(%173: i64):  // 2 preds: ^bb12, ^bb23
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%175 : i64)
  ^bb15(%178: i64):  // 2 preds: ^bb14, ^bb22
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%180 : i64)
  ^bb17(%183: i64):  // 2 preds: ^bb16, ^bb21
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%185 : i64)
  ^bb19(%188: i64):  // 2 preds: ^bb18, ^bb20
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %190 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %173, %191  : i64
    %193 = llvm.add %192, %178  : i64
    %194 = llvm.add %193, %183  : i64
    %195 = llvm.add %194, %188  : i64
    %196 = llvm.getelementptr %190[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.sub %26, %197  : i32
    %199 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mul %173, %200  : i64
    %202 = llvm.add %201, %178  : i64
    %203 = llvm.add %202, %183  : i64
    %204 = llvm.add %203, %188  : i64
    %205 = llvm.getelementptr %199[%204] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %198, %205 : !llvm.ptr<i32>
    %206 = llvm.add %188, %187  : i64
    llvm.br ^bb19(%206 : i64)
  ^bb21:  // pred: ^bb19
    %207 = llvm.add %183, %182  : i64
    llvm.br ^bb17(%207 : i64)
  ^bb22:  // pred: ^bb17
    %208 = llvm.add %178, %177  : i64
    llvm.br ^bb15(%208 : i64)
  ^bb23:  // pred: ^bb15
    %209 = llvm.add %173, %172  : i64
    llvm.br ^bb13(%209 : i64)
  ^bb24:  // pred: ^bb13
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mlir.null : !llvm.ptr<i32>
    %216 = llvm.getelementptr %215[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %217 = llvm.ptrtoint %216 : !llvm.ptr<i32> to i64
    %218 = llvm.mlir.constant(16 : index) : i64
    %219 = llvm.add %217, %218  : i64
    %220 = llvm.call @malloc(%219) : (i64) -> !llvm.ptr<i8>
    %221 = llvm.bitcast %220 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %222 = llvm.ptrtoint %221 : !llvm.ptr<i32> to i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.sub %218, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.urem %225, %218  : i64
    %227 = llvm.sub %225, %226  : i64
    %228 = llvm.inttoptr %227 : i64 to !llvm.ptr<i32>
    %229 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %230 = llvm.insertvalue %221, %229[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.insertvalue %228, %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.insertvalue %232, %231[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.insertvalue %210, %233[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.insertvalue %211, %234[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.insertvalue %212, %235[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.insertvalue %211, %236[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.insertvalue %212, %237[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %239 = llvm.insertvalue %213, %238[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%240 : i64)
  ^bb25(%243: i64):  // 2 preds: ^bb24, ^bb32
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%245 : i64)
  ^bb27(%248: i64):  // 2 preds: ^bb26, ^bb31
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%250 : i64)
  ^bb29(%253: i64):  // 2 preds: ^bb28, ^bb30
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %255 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mul %243, %256  : i64
    %258 = llvm.add %257, %248  : i64
    %259 = llvm.add %258, %253  : i64
    %260 = llvm.getelementptr %255[%259] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %25, %260 : !llvm.ptr<i32>
    %261 = llvm.add %253, %252  : i64
    llvm.br ^bb29(%261 : i64)
  ^bb31:  // pred: ^bb29
    %262 = llvm.add %248, %247  : i64
    llvm.br ^bb27(%262 : i64)
  ^bb32:  // pred: ^bb27
    %263 = llvm.add %243, %242  : i64
    llvm.br ^bb25(%263 : i64)
  ^bb33:  // pred: ^bb25
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%264 : i64)
  ^bb34(%267: i64):  // 2 preds: ^bb33, ^bb44
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%269 : i64)
  ^bb36(%272: i64):  // 2 preds: ^bb35, ^bb43
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%274 : i64)
  ^bb38(%277: i64):  // 2 preds: ^bb37, ^bb42
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%279 : i64)
  ^bb40(%282: i64):  // 2 preds: ^bb39, ^bb41
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %284 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %267, %285  : i64
    %287 = llvm.add %286, %272  : i64
    %288 = llvm.add %287, %277  : i64
    %289 = llvm.add %288, %282  : i64
    %290 = llvm.getelementptr %284[%289] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %291 = llvm.load %290 : !llvm.ptr<i32>
    %292 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mul %267, %293  : i64
    %295 = llvm.add %294, %272  : i64
    %296 = llvm.add %295, %277  : i64
    %297 = llvm.getelementptr %292[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %298 = llvm.load %297 : !llvm.ptr<i32>
    %299 = llvm.icmp "slt" %298, %291 : i32
    %300 = llvm.select %299, %298, %291 : i1, i32
    %301 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mul %267, %302  : i64
    %304 = llvm.add %303, %272  : i64
    %305 = llvm.add %304, %277  : i64
    %306 = llvm.getelementptr %301[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %300, %306 : !llvm.ptr<i32>
    %307 = llvm.add %282, %281  : i64
    llvm.br ^bb40(%307 : i64)
  ^bb42:  // pred: ^bb40
    %308 = llvm.add %277, %276  : i64
    llvm.br ^bb38(%308 : i64)
  ^bb43:  // pred: ^bb38
    %309 = llvm.add %272, %271  : i64
    llvm.br ^bb36(%309 : i64)
  ^bb44:  // pred: ^bb36
    %310 = llvm.add %267, %266  : i64
    llvm.br ^bb34(%310 : i64)
  ^bb45:  // pred: ^bb34
    %311 = llvm.mlir.constant(3 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.null : !llvm.ptr<i64>
    %314 = llvm.getelementptr %313[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.ptrtoint %314 : !llvm.ptr<i64> to i64
    %316 = llvm.mlir.constant(16 : index) : i64
    %317 = llvm.add %315, %316  : i64
    %318 = llvm.call @malloc(%317) : (i64) -> !llvm.ptr<i8>
    %319 = llvm.bitcast %318 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %320 = llvm.ptrtoint %319 : !llvm.ptr<i64> to i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.sub %316, %321  : i64
    %323 = llvm.add %320, %322  : i64
    %324 = llvm.urem %323, %316  : i64
    %325 = llvm.sub %323, %324  : i64
    %326 = llvm.inttoptr %325 : i64 to !llvm.ptr<i64>
    %327 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %328 = llvm.insertvalue %319, %327[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.insertvalue %326, %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.insertvalue %330, %329[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.insertvalue %311, %331[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.insertvalue %312, %332[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(3 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%334 : i64)
  ^bb46(%337: i64):  // 2 preds: ^bb45, ^bb47
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %339 = llvm.extractvalue %333[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.getelementptr %339[%337] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %340 : !llvm.ptr<i64>
    %341 = llvm.add %337, %336  : i64
    llvm.br ^bb46(%341 : i64)
  ^bb48:  // pred: ^bb46
    %342 = llvm.mlir.constant(3 : index) : i64
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
    %366 = llvm.mlir.constant(3 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%365 : i64)
  ^bb49(%368: i64):  // 2 preds: ^bb48, ^bb50
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %370 = llvm.extractvalue %333[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%368] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %374 = llvm.load %373 : !llvm.ptr<i64>
    %375 = llvm.mul %372, %374  : i64
    %376 = llvm.extractvalue %364[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.getelementptr %376[%368] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %375, %377 : !llvm.ptr<i64>
    %378 = llvm.add %368, %367  : i64
    llvm.br ^bb49(%378 : i64)
  ^bb51:  // pred: ^bb49
    %379 = llvm.mlir.constant(3 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.null : !llvm.ptr<i1>
    %382 = llvm.getelementptr %381[%379] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i1> to i64
    %384 = llvm.mlir.constant(16 : index) : i64
    %385 = llvm.add %383, %384  : i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr<i8>
    %387 = llvm.bitcast %386 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %388 = llvm.ptrtoint %387 : !llvm.ptr<i1> to i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.sub %384, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.urem %391, %384  : i64
    %393 = llvm.sub %391, %392  : i64
    %394 = llvm.inttoptr %393 : i64 to !llvm.ptr<i1>
    %395 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %396 = llvm.insertvalue %387, %395[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.insertvalue %394, %396[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.insertvalue %398, %397[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.insertvalue %379, %399[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.insertvalue %380, %400[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(3 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%402 : i64)
  ^bb52(%405: i64):  // 2 preds: ^bb51, ^bb53
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %407 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.getelementptr %407[%405] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %409 = llvm.load %408 : !llvm.ptr<i64>
    %410 = llvm.extractvalue %364[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.getelementptr %410[%405] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.load %411 : !llvm.ptr<i64>
    %413 = llvm.icmp "eq" %409, %412 : i64
    %414 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.getelementptr %414[%405] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %413, %415 : !llvm.ptr<i1>
    %416 = llvm.add %405, %404  : i64
    llvm.br ^bb52(%416 : i64)
  ^bb54:  // pred: ^bb52
    %417 = llvm.mlir.constant(3 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.null : !llvm.ptr<i64>
    %420 = llvm.getelementptr %419[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i64> to i64
    %422 = llvm.mlir.constant(16 : index) : i64
    %423 = llvm.add %421, %422  : i64
    %424 = llvm.call @malloc(%423) : (i64) -> !llvm.ptr<i8>
    %425 = llvm.bitcast %424 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i64> to i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.sub %422, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.urem %429, %422  : i64
    %431 = llvm.sub %429, %430  : i64
    %432 = llvm.inttoptr %431 : i64 to !llvm.ptr<i64>
    %433 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %434 = llvm.insertvalue %425, %433[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.insertvalue %417, %437[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.insertvalue %418, %438[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(3 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%440 : i64)
  ^bb55(%443: i64):  // 2 preds: ^bb54, ^bb56
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %445 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.getelementptr %445[%443] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %447 = llvm.load %446 : !llvm.ptr<i1>
    %448 = llvm.extractvalue %333[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.getelementptr %448[%443] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %450 = llvm.load %449 : !llvm.ptr<i64>
    %451 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.getelementptr %451[%443] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %453 = llvm.load %452 : !llvm.ptr<i64>
    %454 = llvm.select %447, %450, %453 : i1, i64
    %455 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %456 = llvm.getelementptr %455[%443] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %454, %456 : !llvm.ptr<i64>
    %457 = llvm.add %443, %442  : i64
    llvm.br ^bb55(%457 : i64)
  ^bb57:  // pred: ^bb55
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(4 : index) : i64
    %463 = llvm.mlir.null : !llvm.ptr<i32>
    %464 = llvm.getelementptr %463[%462] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %465 = llvm.ptrtoint %464 : !llvm.ptr<i32> to i64
    %466 = llvm.mlir.constant(16 : index) : i64
    %467 = llvm.add %465, %466  : i64
    %468 = llvm.call @malloc(%467) : (i64) -> !llvm.ptr<i8>
    %469 = llvm.bitcast %468 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %470 = llvm.ptrtoint %469 : !llvm.ptr<i32> to i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.sub %466, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.urem %473, %466  : i64
    %475 = llvm.sub %473, %474  : i64
    %476 = llvm.inttoptr %475 : i64 to !llvm.ptr<i32>
    %477 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %478 = llvm.insertvalue %469, %477[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %479 = llvm.insertvalue %476, %478[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.insertvalue %480, %479[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %482 = llvm.insertvalue %458, %481[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %483 = llvm.insertvalue %459, %482[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %484 = llvm.insertvalue %460, %483[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %485 = llvm.insertvalue %459, %484[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %486 = llvm.insertvalue %460, %485[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %487 = llvm.insertvalue %461, %486[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%488 : i64)
  ^bb58(%491: i64):  // 2 preds: ^bb57, ^bb65
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%493 : i64)
  ^bb60(%496: i64):  // 2 preds: ^bb59, ^bb64
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%498 : i64)
  ^bb62(%501: i64):  // 2 preds: ^bb61, ^bb63
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %503 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %504 = llvm.mlir.constant(2 : index) : i64
    %505 = llvm.mul %491, %504  : i64
    %506 = llvm.add %505, %496  : i64
    %507 = llvm.add %506, %27  : i64
    %508 = llvm.getelementptr %503[%507] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %509 = llvm.load %508 : !llvm.ptr<i32>
    %510 = llvm.extractvalue %487[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mul %491, %511  : i64
    %513 = llvm.add %512, %496  : i64
    %514 = llvm.add %513, %501  : i64
    %515 = llvm.getelementptr %510[%514] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %509, %515 : !llvm.ptr<i32>
    %516 = llvm.add %501, %500  : i64
    llvm.br ^bb62(%516 : i64)
  ^bb64:  // pred: ^bb62
    %517 = llvm.add %496, %495  : i64
    llvm.br ^bb60(%517 : i64)
  ^bb65:  // pred: ^bb60
    %518 = llvm.add %491, %490  : i64
    llvm.br ^bb58(%518 : i64)
  ^bb66:  // pred: ^bb58
    %519 = llvm.mlir.constant(2 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.null : !llvm.ptr<i32>
    %524 = llvm.getelementptr %523[%519] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %525 = llvm.ptrtoint %524 : !llvm.ptr<i32> to i64
    %526 = llvm.mlir.constant(16 : index) : i64
    %527 = llvm.add %525, %526  : i64
    %528 = llvm.call @malloc(%527) : (i64) -> !llvm.ptr<i8>
    %529 = llvm.bitcast %528 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %530 = llvm.ptrtoint %529 : !llvm.ptr<i32> to i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.sub %526, %531  : i64
    %533 = llvm.add %530, %532  : i64
    %534 = llvm.urem %533, %526  : i64
    %535 = llvm.sub %533, %534  : i64
    %536 = llvm.inttoptr %535 : i64 to !llvm.ptr<i32>
    %537 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %538 = llvm.insertvalue %529, %537[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %539 = llvm.insertvalue %536, %538[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.insertvalue %540, %539[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %542 = llvm.insertvalue %519, %541[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %543 = llvm.insertvalue %520, %542[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %544 = llvm.insertvalue %521, %543[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %545 = llvm.insertvalue %520, %544[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.insertvalue %521, %545[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %547 = llvm.insertvalue %522, %546[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.mlir.constant(0 : index) : i64
    %549 = llvm.mlir.constant(2 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%548 : i64)
  ^bb67(%551: i64):  // 2 preds: ^bb66, ^bb74
    %552 = llvm.icmp "slt" %551, %549 : i64
    llvm.cond_br %552, ^bb68, ^bb75
  ^bb68:  // pred: ^bb67
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%553 : i64)
  ^bb69(%556: i64):  // 2 preds: ^bb68, ^bb73
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb70, ^bb74
  ^bb70:  // pred: ^bb69
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%558 : i64)
  ^bb71(%561: i64):  // 2 preds: ^bb70, ^bb72
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb72, ^bb73
  ^bb72:  // pred: ^bb71
    %563 = llvm.extractvalue %547[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %564 = llvm.add %551, %556  : i64
    %565 = llvm.add %564, %561  : i64
    %566 = llvm.getelementptr %563[%565] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %25, %566 : !llvm.ptr<i32>
    %567 = llvm.add %561, %560  : i64
    llvm.br ^bb71(%567 : i64)
  ^bb73:  // pred: ^bb71
    %568 = llvm.add %556, %555  : i64
    llvm.br ^bb69(%568 : i64)
  ^bb74:  // pred: ^bb69
    %569 = llvm.add %551, %550  : i64
    llvm.br ^bb67(%569 : i64)
  ^bb75:  // pred: ^bb67
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(2 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%570 : i64)
  ^bb76(%573: i64):  // 2 preds: ^bb75, ^bb86
    %574 = llvm.icmp "slt" %573, %571 : i64
    llvm.cond_br %574, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.mlir.constant(2 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%575 : i64)
  ^bb78(%578: i64):  // 2 preds: ^bb77, ^bb85
    %579 = llvm.icmp "slt" %578, %576 : i64
    llvm.cond_br %579, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%580 : i64)
  ^bb80(%583: i64):  // 2 preds: ^bb79, ^bb84
    %584 = llvm.icmp "slt" %583, %581 : i64
    llvm.cond_br %584, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %585 = llvm.mlir.constant(0 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%585 : i64)
  ^bb82(%588: i64):  // 2 preds: ^bb81, ^bb83
    %589 = llvm.icmp "slt" %588, %586 : i64
    llvm.cond_br %589, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %590 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %573, %591  : i64
    %593 = llvm.add %592, %578  : i64
    %594 = llvm.add %593, %583  : i64
    %595 = llvm.add %594, %588  : i64
    %596 = llvm.getelementptr %590[%595] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %597 = llvm.load %596 : !llvm.ptr<i32>
    %598 = llvm.extractvalue %547[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %599 = llvm.add %578, %583  : i64
    %600 = llvm.add %599, %588  : i64
    %601 = llvm.getelementptr %598[%600] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %602 = llvm.load %601 : !llvm.ptr<i32>
    %603 = llvm.icmp "slt" %602, %597 : i32
    %604 = llvm.select %603, %602, %597 : i1, i32
    %605 = llvm.extractvalue %547[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %606 = llvm.add %578, %583  : i64
    %607 = llvm.add %606, %588  : i64
    %608 = llvm.getelementptr %605[%607] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %604, %608 : !llvm.ptr<i32>
    %609 = llvm.add %588, %587  : i64
    llvm.br ^bb82(%609 : i64)
  ^bb84:  // pred: ^bb82
    %610 = llvm.add %583, %582  : i64
    llvm.br ^bb80(%610 : i64)
  ^bb85:  // pred: ^bb80
    %611 = llvm.add %578, %577  : i64
    llvm.br ^bb78(%611 : i64)
  ^bb86:  // pred: ^bb78
    %612 = llvm.add %573, %572  : i64
    llvm.br ^bb76(%612 : i64)
  ^bb87:  // pred: ^bb76
    %613 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %614 = llvm.insertvalue %169, %613[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %615 = llvm.insertvalue %487, %614[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %616 = llvm.insertvalue %547, %615[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %616 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(4 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %101[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %102[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(0 : i64) : i64
    %124 = llvm.getelementptr %92[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.mlir.constant(3 : i64) : i64
    %126 = llvm.call @omTensorCreateUntyped(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %130 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.bitcast %130 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%126, %127, %129, %131) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %132 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%126, %132) : (!llvm.ptr<i8>, i64) -> ()
    %133 = llvm.call @omTensorGetShape(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.call @omTensorGetStrides(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.getelementptr %133[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.getelementptr %134[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.getelementptr %133[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.getelementptr %134[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(2 : i64) : i64
    %146 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.getelementptr %133[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.getelementptr %134[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(1 : i64) : i64
    %151 = llvm.getelementptr %92[%150] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %126, %151 : !llvm.ptr<ptr<i8>>
    %152 = llvm.mlir.constant(3 : i64) : i64
    %153 = llvm.call @omTensorCreateUntyped(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.bitcast %155 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %157 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%153, %154, %156, %158) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %159 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%153, %159) : (!llvm.ptr<i8>, i64) -> ()
    %160 = llvm.call @omTensorGetShape(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %161 = llvm.call @omTensorGetStrides(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %162 = llvm.mlir.constant(0 : i64) : i64
    %163 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.getelementptr %160[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.getelementptr %161[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.getelementptr %160[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.getelementptr %161[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(2 : i64) : i64
    %173 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.getelementptr %160[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.getelementptr %161[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(2 : i64) : i64
    %178 = llvm.getelementptr %92[%177] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %153, %178 : !llvm.ptr<ptr<i8>>
    %179 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %179 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

