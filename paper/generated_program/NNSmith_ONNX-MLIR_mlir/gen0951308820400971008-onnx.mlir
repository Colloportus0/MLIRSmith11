module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0"]} {
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
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.mlir.constant(1 : i64) : i64
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.mlir.constant(0 : i32) : i32
    %28 = llvm.mlir.constant(0 : index) : i64
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
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %60, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %61, %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.null : !llvm.ptr<i1>
    %88 = llvm.getelementptr %87[%82] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<i1> to i64
    %90 = llvm.mlir.constant(16 : index) : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i1> to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %90, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.urem %97, %90  : i64
    %99 = llvm.sub %97, %98  : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr<i1>
    %101 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %82, %105[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %83, %106[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %85, %108[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%114 : i64)
  ^bb1(%117: i64):  // 2 preds: ^bb0, ^bb11
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%119 : i64)
  ^bb3(%122: i64):  // 2 preds: ^bb2, ^bb10
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%124 : i64)
  ^bb5(%127: i64):  // 2 preds: ^bb4, ^bb9
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%129 : i64)
  ^bb7(%132: i64):  // 2 preds: ^bb6, ^bb8
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %134 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.add %117, %122  : i64
    %136 = llvm.add %135, %127  : i64
    %137 = llvm.add %136, %132  : i64
    %138 = llvm.getelementptr %134[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.icmp "ne" %139, %27 : i32
    %141 = llvm.extractvalue %113[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.add %117, %122  : i64
    %143 = llvm.add %142, %127  : i64
    %144 = llvm.add %143, %132  : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %140, %145 : !llvm.ptr<i1>
    %146 = llvm.add %132, %131  : i64
    llvm.br ^bb7(%146 : i64)
  ^bb9:  // pred: ^bb7
    %147 = llvm.add %127, %126  : i64
    llvm.br ^bb5(%147 : i64)
  ^bb10:  // pred: ^bb5
    %148 = llvm.add %122, %121  : i64
    llvm.br ^bb3(%148 : i64)
  ^bb11:  // pred: ^bb3
    %149 = llvm.add %117, %116  : i64
    llvm.br ^bb1(%149 : i64)
  ^bb12:  // pred: ^bb1
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.null : !llvm.ptr<i32>
    %156 = llvm.getelementptr %155[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i32> to i64
    %158 = llvm.mlir.constant(16 : index) : i64
    %159 = llvm.add %157, %158  : i64
    %160 = llvm.call @malloc(%159) : (i64) -> !llvm.ptr<i8>
    %161 = llvm.bitcast %160 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %162 = llvm.ptrtoint %161 : !llvm.ptr<i32> to i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.sub %158, %163  : i64
    %165 = llvm.add %162, %164  : i64
    %166 = llvm.urem %165, %158  : i64
    %167 = llvm.sub %165, %166  : i64
    %168 = llvm.inttoptr %167 : i64 to !llvm.ptr<i32>
    %169 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %170 = llvm.insertvalue %161, %169[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %168, %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.insertvalue %172, %171[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %150, %173[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %151, %174[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %152, %175[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %153, %176[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %151, %177[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %152, %178[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %153, %179[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %154, %180[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%182 : i64)
  ^bb13(%185: i64):  // 2 preds: ^bb12, ^bb23
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%187 : i64)
  ^bb15(%190: i64):  // 2 preds: ^bb14, ^bb22
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%192 : i64)
  ^bb17(%195: i64):  // 2 preds: ^bb16, ^bb21
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%197 : i64)
  ^bb19(%200: i64):  // 2 preds: ^bb18, ^bb20
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %202 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.add %185, %190  : i64
    %204 = llvm.add %203, %195  : i64
    %205 = llvm.add %204, %200  : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.load %206 : !llvm.ptr<i32>
    %208 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.add %185, %190  : i64
    %210 = llvm.add %209, %195  : i64
    %211 = llvm.add %210, %200  : i64
    %212 = llvm.getelementptr %208[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %207, %212 : !llvm.ptr<i32>
    %213 = llvm.add %200, %199  : i64
    llvm.br ^bb19(%213 : i64)
  ^bb21:  // pred: ^bb19
    %214 = llvm.add %195, %194  : i64
    llvm.br ^bb17(%214 : i64)
  ^bb22:  // pred: ^bb17
    %215 = llvm.add %190, %189  : i64
    llvm.br ^bb15(%215 : i64)
  ^bb23:  // pred: ^bb15
    %216 = llvm.add %185, %184  : i64
    llvm.br ^bb13(%216 : i64)
  ^bb24:  // pred: ^bb13
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%217 : i64)
  ^bb25(%220: i64):  // 2 preds: ^bb24, ^bb35
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%222 : i64)
  ^bb27(%225: i64):  // 2 preds: ^bb26, ^bb34
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%227 : i64)
  ^bb29(%230: i64):  // 2 preds: ^bb28, ^bb33
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%232 : i64)
  ^bb31(%235: i64):  // 2 preds: ^bb30, ^bb32
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.add %220, %237  : i64
    %239 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.add %220, %225  : i64
    %241 = llvm.add %240, %230  : i64
    %242 = llvm.add %241, %235  : i64
    %243 = llvm.getelementptr %239[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %244 = llvm.load %243 : !llvm.ptr<i32>
    %245 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.add %238, %225  : i64
    %247 = llvm.add %246, %230  : i64
    %248 = llvm.add %247, %235  : i64
    %249 = llvm.getelementptr %245[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %244, %249 : !llvm.ptr<i32>
    %250 = llvm.add %235, %234  : i64
    llvm.br ^bb31(%250 : i64)
  ^bb33:  // pred: ^bb31
    %251 = llvm.add %230, %229  : i64
    llvm.br ^bb29(%251 : i64)
  ^bb34:  // pred: ^bb29
    %252 = llvm.add %225, %224  : i64
    llvm.br ^bb27(%252 : i64)
  ^bb35:  // pred: ^bb27
    %253 = llvm.add %220, %219  : i64
    llvm.br ^bb25(%253 : i64)
  ^bb36:  // pred: ^bb25
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.null : !llvm.ptr<i64>
    %257 = llvm.getelementptr %256[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %258 = llvm.ptrtoint %257 : !llvm.ptr<i64> to i64
    %259 = llvm.mlir.constant(16 : index) : i64
    %260 = llvm.add %258, %259  : i64
    %261 = llvm.call @malloc(%260) : (i64) -> !llvm.ptr<i8>
    %262 = llvm.bitcast %261 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i64> to i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.sub %259, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.urem %266, %259  : i64
    %268 = llvm.sub %266, %267  : i64
    %269 = llvm.inttoptr %268 : i64 to !llvm.ptr<i64>
    %270 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %271 = llvm.insertvalue %262, %270[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.insertvalue %269, %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.insertvalue %273, %272[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.insertvalue %254, %274[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.insertvalue %255, %275[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%277 : i64)
  ^bb37(%280: i64):  // 2 preds: ^bb36, ^bb38
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %282 = llvm.extractvalue %276[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.getelementptr %282[%280] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %283 : !llvm.ptr<i64>
    %284 = llvm.add %280, %279  : i64
    llvm.br ^bb37(%284 : i64)
  ^bb39:  // pred: ^bb37
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.null : !llvm.ptr<i64>
    %288 = llvm.getelementptr %287[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i64> to i64
    %290 = llvm.mlir.constant(16 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr<i8>
    %293 = llvm.bitcast %292 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i64> to i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.sub %290, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.urem %297, %290  : i64
    %299 = llvm.sub %297, %298  : i64
    %300 = llvm.inttoptr %299 : i64 to !llvm.ptr<i64>
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %302 = llvm.insertvalue %293, %301[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %300, %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %285, %305[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.insertvalue %286, %306[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%308 : i64)
  ^bb40(%311: i64):  // 2 preds: ^bb39, ^bb41
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %313 = llvm.extractvalue %276[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.load %314 : !llvm.ptr<i64>
    %316 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %317 = llvm.load %316 : !llvm.ptr<i64>
    %318 = llvm.mul %315, %317  : i64
    %319 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.getelementptr %319[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %318, %320 : !llvm.ptr<i64>
    %321 = llvm.add %311, %310  : i64
    llvm.br ^bb40(%321 : i64)
  ^bb42:  // pred: ^bb40
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.null : !llvm.ptr<i1>
    %325 = llvm.getelementptr %324[%322] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i1> to i64
    %327 = llvm.mlir.constant(16 : index) : i64
    %328 = llvm.add %326, %327  : i64
    %329 = llvm.call @malloc(%328) : (i64) -> !llvm.ptr<i8>
    %330 = llvm.bitcast %329 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i1> to i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.sub %327, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.urem %334, %327  : i64
    %336 = llvm.sub %334, %335  : i64
    %337 = llvm.inttoptr %336 : i64 to !llvm.ptr<i1>
    %338 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %339 = llvm.insertvalue %330, %338[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %337, %339[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.insertvalue %341, %340[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %322, %342[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %323, %343[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%345 : i64)
  ^bb43(%348: i64):  // 2 preds: ^bb42, ^bb44
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %350 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.getelementptr %350[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %352 = llvm.load %351 : !llvm.ptr<i64>
    %353 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.getelementptr %353[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %355 = llvm.load %354 : !llvm.ptr<i64>
    %356 = llvm.icmp "eq" %352, %355 : i64
    %357 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.getelementptr %357[%348] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %356, %358 : !llvm.ptr<i1>
    %359 = llvm.add %348, %347  : i64
    llvm.br ^bb43(%359 : i64)
  ^bb45:  // pred: ^bb43
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.null : !llvm.ptr<i64>
    %363 = llvm.getelementptr %362[%360] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i64> to i64
    %365 = llvm.mlir.constant(16 : index) : i64
    %366 = llvm.add %364, %365  : i64
    %367 = llvm.call @malloc(%366) : (i64) -> !llvm.ptr<i8>
    %368 = llvm.bitcast %367 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %369 = llvm.ptrtoint %368 : !llvm.ptr<i64> to i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.sub %365, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.urem %372, %365  : i64
    %374 = llvm.sub %372, %373  : i64
    %375 = llvm.inttoptr %374 : i64 to !llvm.ptr<i64>
    %376 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %377 = llvm.insertvalue %368, %376[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.insertvalue %375, %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.insertvalue %379, %378[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.insertvalue %360, %380[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.insertvalue %361, %381[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(4 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%383 : i64)
  ^bb46(%386: i64):  // 2 preds: ^bb45, ^bb47
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %388 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%386] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %390 = llvm.load %389 : !llvm.ptr<i1>
    %391 = llvm.extractvalue %276[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%386] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %393 = llvm.load %392 : !llvm.ptr<i64>
    %394 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.getelementptr %394[%386] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %396 = llvm.load %395 : !llvm.ptr<i64>
    %397 = llvm.select %390, %393, %396 : i1, i64
    %398 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.getelementptr %398[%386] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %397, %399 : !llvm.ptr<i64>
    %400 = llvm.add %386, %385  : i64
    llvm.br ^bb46(%400 : i64)
  ^bb48:  // pred: ^bb46
    %401 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.getelementptr %401[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %403 = llvm.load %402 : !llvm.ptr<i64>
    %404 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.getelementptr %404[%26] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %406 = llvm.load %405 : !llvm.ptr<i64>
    %407 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.getelementptr %407[%24] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %409 = llvm.load %408 : !llvm.ptr<i64>
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mul %409, %406  : i64
    %413 = llvm.mul %412, %403  : i64
    %414 = llvm.mul %413, %410  : i64
    %415 = llvm.mlir.null : !llvm.ptr<i32>
    %416 = llvm.getelementptr %415[%414] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i32> to i64
    %418 = llvm.mlir.constant(16 : index) : i64
    %419 = llvm.add %417, %418  : i64
    %420 = llvm.call @malloc(%419) : (i64) -> !llvm.ptr<i8>
    %421 = llvm.bitcast %420 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %422 = llvm.ptrtoint %421 : !llvm.ptr<i32> to i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.sub %418, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.urem %425, %418  : i64
    %427 = llvm.sub %425, %426  : i64
    %428 = llvm.inttoptr %427 : i64 to !llvm.ptr<i32>
    %429 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %430 = llvm.insertvalue %421, %429[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %428, %430[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.insertvalue %432, %431[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %410, %433[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %403, %434[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %406, %435[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %409, %436[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %413, %437[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %409, %439[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %411, %440[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%442 : i64)
  ^bb49(%445: i64):  // 2 preds: ^bb48, ^bb59
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%447 : i64)
  ^bb51(%449: i64):  // 2 preds: ^bb50, ^bb58
    %450 = llvm.icmp "slt" %449, %403 : i64
    llvm.cond_br %450, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%451 : i64)
  ^bb53(%453: i64):  // 2 preds: ^bb52, ^bb57
    %454 = llvm.icmp "slt" %453, %406 : i64
    llvm.cond_br %454, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%455 : i64)
  ^bb55(%457: i64):  // 2 preds: ^bb54, ^bb56
    %458 = llvm.icmp "slt" %457, %409 : i64
    llvm.cond_br %458, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %459 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.add %445, %28  : i64
    %461 = llvm.add %460, %28  : i64
    %462 = llvm.add %461, %28  : i64
    %463 = llvm.getelementptr %459[%462] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %464 = llvm.load %463 : !llvm.ptr<i32>
    %465 = llvm.extractvalue %441[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.extractvalue %441[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mul %445, %466  : i64
    %468 = llvm.extractvalue %441[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mul %449, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.extractvalue %441[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mul %453, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.add %473, %457  : i64
    %475 = llvm.getelementptr %465[%474] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %464, %475 : !llvm.ptr<i32>
    %476 = llvm.add %457, %456  : i64
    llvm.br ^bb55(%476 : i64)
  ^bb57:  // pred: ^bb55
    %477 = llvm.add %453, %452  : i64
    llvm.br ^bb53(%477 : i64)
  ^bb58:  // pred: ^bb53
    %478 = llvm.add %449, %448  : i64
    llvm.br ^bb51(%478 : i64)
  ^bb59:  // pred: ^bb51
    %479 = llvm.add %445, %444  : i64
    llvm.br ^bb49(%479 : i64)
  ^bb60:  // pred: ^bb49
    %480 = llvm.mlir.constant(2 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.null : !llvm.ptr<i32>
    %486 = llvm.getelementptr %485[%480] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %487 = llvm.ptrtoint %486 : !llvm.ptr<i32> to i64
    %488 = llvm.mlir.constant(16 : index) : i64
    %489 = llvm.add %487, %488  : i64
    %490 = llvm.call @malloc(%489) : (i64) -> !llvm.ptr<i8>
    %491 = llvm.bitcast %490 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %492 = llvm.ptrtoint %491 : !llvm.ptr<i32> to i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.sub %488, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.urem %495, %488  : i64
    %497 = llvm.sub %495, %496  : i64
    %498 = llvm.inttoptr %497 : i64 to !llvm.ptr<i32>
    %499 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %500 = llvm.insertvalue %491, %499[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %498, %500[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.insertvalue %502, %501[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %480, %503[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %481, %504[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %482, %505[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %483, %506[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %481, %507[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %482, %508[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %483, %509[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %484, %510[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(2 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%512 : i64)
  ^bb61(%515: i64):  // 2 preds: ^bb60, ^bb71
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%517 : i64)
  ^bb63(%519: i64):  // 2 preds: ^bb62, ^bb70
    %520 = llvm.icmp "slt" %519, %403 : i64
    llvm.cond_br %520, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%521 : i64)
  ^bb65(%523: i64):  // 2 preds: ^bb64, ^bb69
    %524 = llvm.icmp "slt" %523, %406 : i64
    llvm.cond_br %524, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%525 : i64)
  ^bb67(%527: i64):  // 2 preds: ^bb66, ^bb68
    %528 = llvm.icmp "slt" %527, %409 : i64
    llvm.cond_br %528, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %529 = llvm.extractvalue %441[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.extractvalue %441[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.mul %515, %530  : i64
    %532 = llvm.extractvalue %441[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.mul %519, %532  : i64
    %534 = llvm.add %531, %533  : i64
    %535 = llvm.extractvalue %441[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.mul %523, %535  : i64
    %537 = llvm.add %534, %536  : i64
    %538 = llvm.add %537, %527  : i64
    %539 = llvm.getelementptr %529[%538] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %540 = llvm.load %539 : !llvm.ptr<i32>
    %541 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.add %515, %519  : i64
    %543 = llvm.add %542, %527  : i64
    %544 = llvm.add %543, %523  : i64
    %545 = llvm.getelementptr %541[%544] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %540, %545 : !llvm.ptr<i32>
    %546 = llvm.add %527, %526  : i64
    llvm.br ^bb67(%546 : i64)
  ^bb69:  // pred: ^bb67
    %547 = llvm.add %523, %522  : i64
    llvm.br ^bb65(%547 : i64)
  ^bb70:  // pred: ^bb65
    %548 = llvm.add %519, %518  : i64
    llvm.br ^bb63(%548 : i64)
  ^bb71:  // pred: ^bb63
    %549 = llvm.add %515, %514  : i64
    llvm.br ^bb61(%549 : i64)
  ^bb72:  // pred: ^bb61
    %550 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %551 = llvm.insertvalue %113, %550[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %552 = llvm.insertvalue %511, %551[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %552 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %133[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.getelementptr %91[%154] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %125, %155 : !llvm.ptr<ptr<i8>>
    %156 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %156 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

