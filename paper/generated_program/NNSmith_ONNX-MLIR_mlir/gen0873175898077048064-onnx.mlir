module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<4> : tensor<2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr<i32>, %arg21: !llvm.ptr<i32>, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %23 = llvm.insertvalue %arg20, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg22, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg27, %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg28, %28[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg25, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg29, %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg26, %31[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg30, %32[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.mlir.null : !llvm.ptr<i32>
    %66 = llvm.getelementptr %65[%64] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<i32> to i64
    %68 = llvm.mlir.constant(16 : index) : i64
    %69 = llvm.add %67, %68  : i64
    %70 = llvm.call @malloc(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.bitcast %70 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i32> to i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.sub %68, %73  : i64
    %75 = llvm.add %72, %74  : i64
    %76 = llvm.urem %75, %68  : i64
    %77 = llvm.sub %75, %76  : i64
    %78 = llvm.inttoptr %77 : i64 to !llvm.ptr<i32>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %80 = llvm.insertvalue %71, %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %58, %83[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %59, %84[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %60, %85[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %61, %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %63, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %60, %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %61, %89[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %62, %90[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%92 : i64)
  ^bb1(%95: i64):  // 2 preds: ^bb0, ^bb11
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%97 : i64)
  ^bb3(%100: i64):  // 2 preds: ^bb2, ^bb10
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%102 : i64)
  ^bb5(%105: i64):  // 2 preds: ^bb4, ^bb9
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%107 : i64)
  ^bb7(%110: i64):  // 2 preds: ^bb6, ^bb8
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %112 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mul %34, %113  : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %100, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.add %117, %105  : i64
    %119 = llvm.add %118, %110  : i64
    %120 = llvm.getelementptr %112[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.add %95, %100  : i64
    %124 = llvm.add %123, %34  : i64
    %125 = llvm.add %124, %110  : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.icmp "sgt" %121, %127 : i32
    %129 = llvm.select %128, %121, %127 : i1, i32
    %130 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %95, %131  : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mul %100, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.add %135, %105  : i64
    %137 = llvm.add %136, %110  : i64
    %138 = llvm.getelementptr %130[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %129, %138 : !llvm.ptr<i32>
    %139 = llvm.add %110, %109  : i64
    llvm.br ^bb7(%139 : i64)
  ^bb9:  // pred: ^bb7
    %140 = llvm.add %105, %104  : i64
    llvm.br ^bb5(%140 : i64)
  ^bb10:  // pred: ^bb5
    %141 = llvm.add %100, %99  : i64
    llvm.br ^bb3(%141 : i64)
  ^bb11:  // pred: ^bb3
    %142 = llvm.add %95, %94  : i64
    llvm.br ^bb1(%142 : i64)
  ^bb12:  // pred: ^bb1
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(4 : index) : i64
    %149 = llvm.mlir.null : !llvm.ptr<i32>
    %150 = llvm.getelementptr %149[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<i32> to i64
    %152 = llvm.mlir.constant(16 : index) : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr<i8>
    %155 = llvm.bitcast %154 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i32> to i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.sub %152, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.urem %159, %152  : i64
    %161 = llvm.sub %159, %160  : i64
    %162 = llvm.inttoptr %161 : i64 to !llvm.ptr<i32>
    %163 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %164 = llvm.insertvalue %155, %163[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %165 = llvm.insertvalue %162, %164[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.insertvalue %166, %165[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.insertvalue %143, %167[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.insertvalue %144, %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %145, %169[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %147, %170[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.insertvalue %145, %171[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %146, %172[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%174 : i64)
  ^bb13(%177: i64):  // 2 preds: ^bb12, ^bb20
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%179 : i64)
  ^bb15(%182: i64):  // 2 preds: ^bb14, ^bb19
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%184 : i64)
  ^bb17(%187: i64):  // 2 preds: ^bb16, ^bb18
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %189 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mul %177, %190  : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mul %182, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.add %194, %187  : i64
    %196 = llvm.getelementptr %189[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %177, %199  : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %182, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.add %203, %187  : i64
    %205 = llvm.getelementptr %198[%204] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %206 = llvm.load %205 : !llvm.ptr<i32>
    %207 = llvm.add %197, %206  : i32
    %208 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mul %177, %209  : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %182, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.add %213, %187  : i64
    %215 = llvm.getelementptr %208[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %207, %215 : !llvm.ptr<i32>
    %216 = llvm.add %187, %186  : i64
    llvm.br ^bb17(%216 : i64)
  ^bb19:  // pred: ^bb17
    %217 = llvm.add %182, %181  : i64
    llvm.br ^bb15(%217 : i64)
  ^bb20:  // pred: ^bb15
    %218 = llvm.add %177, %176  : i64
    llvm.br ^bb13(%218 : i64)
  ^bb21:  // pred: ^bb13
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(4 : index) : i64
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mlir.null : !llvm.ptr<i32>
    %228 = llvm.getelementptr %227[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %229 = llvm.ptrtoint %228 : !llvm.ptr<i32> to i64
    %230 = llvm.mlir.constant(16 : index) : i64
    %231 = llvm.add %229, %230  : i64
    %232 = llvm.call @malloc(%231) : (i64) -> !llvm.ptr<i8>
    %233 = llvm.bitcast %232 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i32> to i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.sub %230, %235  : i64
    %237 = llvm.add %234, %236  : i64
    %238 = llvm.urem %237, %230  : i64
    %239 = llvm.sub %237, %238  : i64
    %240 = llvm.inttoptr %239 : i64 to !llvm.ptr<i32>
    %241 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %242 = llvm.insertvalue %233, %241[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %240, %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.insertvalue %244, %243[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %219, %245[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %220, %246[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %221, %247[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %222, %248[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %225, %249[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %224, %250[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %222, %251[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %223, %252[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%254 : i64)
  ^bb22(%257: i64):  // 2 preds: ^bb21, ^bb32
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%259 : i64)
  ^bb24(%262: i64):  // 2 preds: ^bb23, ^bb31
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%264 : i64)
  ^bb26(%267: i64):  // 2 preds: ^bb25, ^bb30
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%269 : i64)
  ^bb28(%272: i64):  // 2 preds: ^bb27, ^bb29
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %274 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mul %257, %275  : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mul %262, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mul %267, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %272  : i64
    %284 = llvm.getelementptr %274[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %285 = llvm.load %284 : !llvm.ptr<i32>
    %286 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mul %262, %287  : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mul %267, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.add %291, %272  : i64
    %293 = llvm.getelementptr %286[%292] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %294 = llvm.load %293 : !llvm.ptr<i32>
    %295 = llvm.icmp "sgt" %285, %294 : i32
    %296 = llvm.select %295, %285, %294 : i1, i32
    %297 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %257, %298  : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %262, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %267, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %272  : i64
    %307 = llvm.getelementptr %297[%306] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %296, %307 : !llvm.ptr<i32>
    %308 = llvm.add %272, %271  : i64
    llvm.br ^bb28(%308 : i64)
  ^bb30:  // pred: ^bb28
    %309 = llvm.add %267, %266  : i64
    llvm.br ^bb26(%309 : i64)
  ^bb31:  // pred: ^bb26
    %310 = llvm.add %262, %261  : i64
    llvm.br ^bb24(%310 : i64)
  ^bb32:  // pred: ^bb24
    %311 = llvm.add %257, %256  : i64
    llvm.br ^bb22(%311 : i64)
  ^bb33:  // pred: ^bb22
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mlir.constant(8 : index) : i64
    %319 = llvm.mlir.constant(16 : index) : i64
    %320 = llvm.mlir.null : !llvm.ptr<i32>
    %321 = llvm.getelementptr %320[%319] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %322 = llvm.ptrtoint %321 : !llvm.ptr<i32> to i64
    %323 = llvm.mlir.constant(16 : index) : i64
    %324 = llvm.add %322, %323  : i64
    %325 = llvm.call @malloc(%324) : (i64) -> !llvm.ptr<i8>
    %326 = llvm.bitcast %325 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i32> to i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.sub %323, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.urem %330, %323  : i64
    %332 = llvm.sub %330, %331  : i64
    %333 = llvm.inttoptr %332 : i64 to !llvm.ptr<i32>
    %334 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %335 = llvm.insertvalue %326, %334[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %333, %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.insertvalue %337, %336[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %312, %338[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %313, %339[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %314, %340[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %315, %341[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %318, %342[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %317, %343[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %315, %344[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %316, %345[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%347 : i64)
  ^bb34(%350: i64):  // 2 preds: ^bb33, ^bb44
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%352 : i64)
  ^bb36(%355: i64):  // 2 preds: ^bb35, ^bb43
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%357 : i64)
  ^bb38(%360: i64):  // 2 preds: ^bb37, ^bb42
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%362 : i64)
  ^bb40(%365: i64):  // 2 preds: ^bb39, ^bb41
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %367 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mul %350, %368  : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %34, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %360  : i64
    %374 = llvm.add %373, %34  : i64
    %375 = llvm.getelementptr %367[%374] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %376 = llvm.load %375 : !llvm.ptr<i32>
    %377 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mul %34, %378  : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mul %355, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mul %34, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.add %385, %365  : i64
    %387 = llvm.getelementptr %377[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %388 = llvm.load %387 : !llvm.ptr<i32>
    %389 = llvm.icmp "slt" %376, %388 : i32
    %390 = llvm.select %389, %376, %388 : i1, i32
    %391 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.mlir.constant(8 : index) : i64
    %393 = llvm.mul %350, %392  : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mul %355, %394  : i64
    %396 = llvm.add %393, %395  : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mul %360, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.add %399, %365  : i64
    %401 = llvm.getelementptr %391[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %390, %401 : !llvm.ptr<i32>
    %402 = llvm.add %365, %364  : i64
    llvm.br ^bb40(%402 : i64)
  ^bb42:  // pred: ^bb40
    %403 = llvm.add %360, %359  : i64
    llvm.br ^bb38(%403 : i64)
  ^bb43:  // pred: ^bb38
    %404 = llvm.add %355, %354  : i64
    llvm.br ^bb36(%404 : i64)
  ^bb44:  // pred: ^bb36
    %405 = llvm.add %350, %349  : i64
    llvm.br ^bb34(%405 : i64)
  ^bb45:  // pred: ^bb34
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mlir.constant(8 : index) : i64
    %413 = llvm.mlir.constant(16 : index) : i64
    %414 = llvm.mlir.null : !llvm.ptr<i32>
    %415 = llvm.getelementptr %414[%413] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i32> to i64
    %417 = llvm.mlir.constant(16 : index) : i64
    %418 = llvm.add %416, %417  : i64
    %419 = llvm.call @malloc(%418) : (i64) -> !llvm.ptr<i8>
    %420 = llvm.bitcast %419 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i32> to i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.sub %417, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.urem %424, %417  : i64
    %426 = llvm.sub %424, %425  : i64
    %427 = llvm.inttoptr %426 : i64 to !llvm.ptr<i32>
    %428 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %429 = llvm.insertvalue %420, %428[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %427, %429[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.insertvalue %431, %430[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %408, %434[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %409, %435[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %412, %436[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %409, %438[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %410, %439[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%441 : i64)
  ^bb46(%444: i64):  // 2 preds: ^bb45, ^bb56
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%446 : i64)
  ^bb48(%449: i64):  // 2 preds: ^bb47, ^bb55
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%451 : i64)
  ^bb50(%454: i64):  // 2 preds: ^bb49, ^bb54
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%456 : i64)
  ^bb52(%459: i64):  // 2 preds: ^bb51, ^bb53
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %461 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(8 : index) : i64
    %463 = llvm.mul %444, %462  : i64
    %464 = llvm.mlir.constant(4 : index) : i64
    %465 = llvm.mul %449, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %454, %467  : i64
    %469 = llvm.add %466, %468  : i64
    %470 = llvm.add %469, %459  : i64
    %471 = llvm.getelementptr %461[%470] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %472 = llvm.load %471 : !llvm.ptr<i32>
    %473 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.mlir.constant(8 : index) : i64
    %475 = llvm.mul %444, %474  : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %449, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %454, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.add %481, %459  : i64
    %483 = llvm.getelementptr %473[%482] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %484 = llvm.load %483 : !llvm.ptr<i32>
    %485 = llvm.add %472, %484  : i32
    %486 = llvm.extractvalue %440[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.mlir.constant(8 : index) : i64
    %488 = llvm.mul %444, %487  : i64
    %489 = llvm.mlir.constant(4 : index) : i64
    %490 = llvm.mul %449, %489  : i64
    %491 = llvm.add %488, %490  : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mul %454, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.add %494, %459  : i64
    %496 = llvm.getelementptr %486[%495] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %485, %496 : !llvm.ptr<i32>
    %497 = llvm.add %459, %458  : i64
    llvm.br ^bb52(%497 : i64)
  ^bb54:  // pred: ^bb52
    %498 = llvm.add %454, %453  : i64
    llvm.br ^bb50(%498 : i64)
  ^bb55:  // pred: ^bb50
    %499 = llvm.add %449, %448  : i64
    llvm.br ^bb48(%499 : i64)
  ^bb56:  // pred: ^bb48
    %500 = llvm.add %444, %443  : i64
    llvm.br ^bb46(%500 : i64)
  ^bb57:  // pred: ^bb46
    %501 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %502 = llvm.insertvalue %173, %501[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %503 = llvm.insertvalue %440, %502[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %503 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %34 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %34, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %77, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %0[%78] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %80 = llvm.load %79 : !llvm.ptr<ptr<i8>>
    %81 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %83 = llvm.call @omTensorGetDataPtr(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %85 = llvm.insertvalue %84, %82[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %84, %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(0 : i64) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %90 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %91 = llvm.mlir.constant(0 : i64) : i64
    %92 = llvm.getelementptr %89[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %90[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.getelementptr %89[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %90[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.getelementptr %89[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %90[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(3 : i64) : i64
    %113 = llvm.getelementptr %89[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %90[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %118, %81 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %81) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %119 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %120 = llvm.extractvalue %119[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %121 = llvm.extractvalue %119[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %122 = llvm.mlir.constant(2 : i64) : i64
    %123 = llvm.mlir.constant(16 : i64) : i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.call @omTensorCreateUntyped(%126) : (i64) -> !llvm.ptr<i8>
    %128 = llvm.mlir.constant(1 : i64) : i64
    %129 = llvm.extractvalue %120[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %131 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.bitcast %131 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%127, %128, %130, %132) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %133 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%127, %133) : (!llvm.ptr<i8>, i64) -> ()
    %134 = llvm.call @omTensorGetShape(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %135 = llvm.call @omTensorGetStrides(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %136 = llvm.mlir.constant(0 : i64) : i64
    %137 = llvm.extractvalue %120[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %134[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %120[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %135[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(1 : i64) : i64
    %142 = llvm.extractvalue %120[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.getelementptr %134[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %120[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.getelementptr %135[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.extractvalue %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.getelementptr %134[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %120[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.getelementptr %135[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(0 : i64) : i64
    %152 = llvm.getelementptr %125[%151] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %127, %152 : !llvm.ptr<ptr<i8>>
    %153 = llvm.mlir.constant(4 : i64) : i64
    %154 = llvm.call @omTensorCreateUntyped(%153) : (i64) -> !llvm.ptr<i8>
    %155 = llvm.mlir.constant(1 : i64) : i64
    %156 = llvm.extractvalue %121[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.bitcast %156 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %158 = llvm.extractvalue %121[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.bitcast %158 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%154, %155, %157, %159) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %160 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%154, %160) : (!llvm.ptr<i8>, i64) -> ()
    %161 = llvm.call @omTensorGetShape(%154) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %162 = llvm.call @omTensorGetStrides(%154) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %163 = llvm.mlir.constant(0 : i64) : i64
    %164 = llvm.extractvalue %121[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.getelementptr %161[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.extractvalue %121[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %162[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.mlir.constant(1 : i64) : i64
    %169 = llvm.extractvalue %121[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %161[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.extractvalue %121[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %162[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.mlir.constant(2 : i64) : i64
    %174 = llvm.extractvalue %121[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.getelementptr %161[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %174, %175 : !llvm.ptr<i64>
    %176 = llvm.extractvalue %121[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %162[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.mlir.constant(3 : i64) : i64
    %179 = llvm.extractvalue %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.getelementptr %161[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.extractvalue %121[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %162[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.mlir.constant(1 : i64) : i64
    %184 = llvm.getelementptr %125[%183] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %154, %184 : !llvm.ptr<ptr<i8>>
    %185 = llvm.call @omTensorListCreate(%125, %122, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %185 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<208 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<208 x i8>> to !llvm.ptr<i8>
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

