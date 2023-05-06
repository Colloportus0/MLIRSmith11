module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 4] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr<i32>, %arg11: !llvm.ptr<i32>, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg16, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
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
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.null : !llvm.ptr<i32>
    %61 = llvm.getelementptr %60[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %62 = llvm.ptrtoint %61 : !llvm.ptr<i32> to i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.add %62, %63  : i64
    %65 = llvm.call @malloc(%64) : (i64) -> !llvm.ptr<i8>
    %66 = llvm.bitcast %65 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<i32> to i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.sub %63, %68  : i64
    %70 = llvm.add %67, %69  : i64
    %71 = llvm.urem %70, %63  : i64
    %72 = llvm.sub %70, %71  : i64
    %73 = llvm.inttoptr %72 : i64 to !llvm.ptr<i32>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.insertvalue %66, %74[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %58, %78[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.insertvalue %59, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%81 : i64)
  ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb2
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %86 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.load %87 : !llvm.ptr<i32>
    %89 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.getelementptr %89[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %91 = llvm.load %90 : !llvm.ptr<i32>
    %92 = llvm.mul %88, %91  : i32
    %93 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.getelementptr %93[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %92, %94 : !llvm.ptr<i32>
    %95 = llvm.add %84, %83  : i64
    llvm.br ^bb1(%95 : i64)
  ^bb3:  // pred: ^bb1
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.null : !llvm.ptr<i64>
    %99 = llvm.getelementptr %98[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.ptrtoint %99 : !llvm.ptr<i64> to i64
    %101 = llvm.mlir.constant(16 : index) : i64
    %102 = llvm.add %100, %101  : i64
    %103 = llvm.call @malloc(%102) : (i64) -> !llvm.ptr<i8>
    %104 = llvm.bitcast %103 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %105 = llvm.ptrtoint %104 : !llvm.ptr<i64> to i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.sub %101, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.urem %108, %101  : i64
    %110 = llvm.sub %108, %109  : i64
    %111 = llvm.inttoptr %110 : i64 to !llvm.ptr<i64>
    %112 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.insertvalue %104, %112[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %96, %116[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.insertvalue %97, %117[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%119 : i64)
  ^bb4(%122: i64):  // 2 preds: ^bb3, ^bb5
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %124 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.getelementptr %124[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %125 : !llvm.ptr<i64>
    %126 = llvm.add %122, %121  : i64
    llvm.br ^bb4(%126 : i64)
  ^bb6:  // pred: ^bb4
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.null : !llvm.ptr<i64>
    %130 = llvm.getelementptr %129[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i64> to i64
    %132 = llvm.mlir.constant(16 : index) : i64
    %133 = llvm.add %131, %132  : i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.bitcast %134 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i64> to i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.sub %132, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.urem %139, %132  : i64
    %141 = llvm.sub %139, %140  : i64
    %142 = llvm.inttoptr %141 : i64 to !llvm.ptr<i64>
    %143 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %144 = llvm.insertvalue %135, %143[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.insertvalue %146, %145[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %127, %147[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.insertvalue %128, %148[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%150 : i64)
  ^bb7(%153: i64):  // 2 preds: ^bb6, ^bb8
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %155 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %155[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %157 = llvm.load %156 : !llvm.ptr<i64>
    %158 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %159 = llvm.load %158 : !llvm.ptr<i64>
    %160 = llvm.mul %157, %159  : i64
    %161 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.getelementptr %161[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %162 : !llvm.ptr<i64>
    %163 = llvm.add %153, %152  : i64
    llvm.br ^bb7(%163 : i64)
  ^bb9:  // pred: ^bb7
    %164 = llvm.mlir.constant(4 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.null : !llvm.ptr<i1>
    %167 = llvm.getelementptr %166[%164] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i1> to i64
    %169 = llvm.mlir.constant(16 : index) : i64
    %170 = llvm.add %168, %169  : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i1> to i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.sub %169, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.urem %176, %169  : i64
    %178 = llvm.sub %176, %177  : i64
    %179 = llvm.inttoptr %178 : i64 to !llvm.ptr<i1>
    %180 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %181 = llvm.insertvalue %172, %180[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %164, %184[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %165, %185[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(4 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%187 : i64)
  ^bb10(%190: i64):  // 2 preds: ^bb9, ^bb11
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %192 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.getelementptr %192[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %194 = llvm.load %193 : !llvm.ptr<i64>
    %195 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.getelementptr %195[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %197 = llvm.load %196 : !llvm.ptr<i64>
    %198 = llvm.icmp "eq" %194, %197 : i64
    %199 = llvm.extractvalue %186[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%190] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %198, %200 : !llvm.ptr<i1>
    %201 = llvm.add %190, %189  : i64
    llvm.br ^bb10(%201 : i64)
  ^bb12:  // pred: ^bb10
    %202 = llvm.mlir.constant(4 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.null : !llvm.ptr<i64>
    %205 = llvm.getelementptr %204[%202] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i64> to i64
    %207 = llvm.mlir.constant(16 : index) : i64
    %208 = llvm.add %206, %207  : i64
    %209 = llvm.call @malloc(%208) : (i64) -> !llvm.ptr<i8>
    %210 = llvm.bitcast %209 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %211 = llvm.ptrtoint %210 : !llvm.ptr<i64> to i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.sub %207, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.urem %214, %207  : i64
    %216 = llvm.sub %214, %215  : i64
    %217 = llvm.inttoptr %216 : i64 to !llvm.ptr<i64>
    %218 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %219 = llvm.insertvalue %210, %218[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.insertvalue %217, %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.insertvalue %221, %220[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %202, %222[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %203, %223[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%225 : i64)
  ^bb13(%228: i64):  // 2 preds: ^bb12, ^bb14
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %230 = llvm.extractvalue %186[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.getelementptr %230[%228] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %232 = llvm.load %231 : !llvm.ptr<i1>
    %233 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.getelementptr %233[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %235 = llvm.load %234 : !llvm.ptr<i64>
    %236 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.getelementptr %236[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %238 = llvm.load %237 : !llvm.ptr<i64>
    %239 = llvm.select %232, %235, %238 : i1, i64
    %240 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %239, %241 : !llvm.ptr<i64>
    %242 = llvm.add %228, %227  : i64
    llvm.br ^bb13(%242 : i64)
  ^bb15:  // pred: ^bb13
    %243 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.getelementptr %243[%28] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %245 = llvm.load %244 : !llvm.ptr<i64>
    %246 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.getelementptr %246[%25] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %248 = llvm.load %247 : !llvm.ptr<i64>
    %249 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.getelementptr %249[%24] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %251 = llvm.load %250 : !llvm.ptr<i64>
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mul %251, %248  : i64
    %255 = llvm.mul %254, %245  : i64
    %256 = llvm.mul %255, %252  : i64
    %257 = llvm.mlir.null : !llvm.ptr<i32>
    %258 = llvm.getelementptr %257[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %259 = llvm.ptrtoint %258 : !llvm.ptr<i32> to i64
    %260 = llvm.mlir.constant(16 : index) : i64
    %261 = llvm.add %259, %260  : i64
    %262 = llvm.call @malloc(%261) : (i64) -> !llvm.ptr<i8>
    %263 = llvm.bitcast %262 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %264 = llvm.ptrtoint %263 : !llvm.ptr<i32> to i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.sub %260, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.urem %267, %260  : i64
    %269 = llvm.sub %267, %268  : i64
    %270 = llvm.inttoptr %269 : i64 to !llvm.ptr<i32>
    %271 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %272 = llvm.insertvalue %263, %271[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %270, %272[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.insertvalue %274, %273[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %252, %275[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %245, %276[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %248, %277[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %251, %278[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %255, %279[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %251, %281[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %253, %282[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%284 : i64)
  ^bb16(%287: i64):  // 2 preds: ^bb15, ^bb26
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%289 : i64)
  ^bb18(%291: i64):  // 2 preds: ^bb17, ^bb25
    %292 = llvm.icmp "slt" %291, %245 : i64
    llvm.cond_br %292, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%293 : i64)
  ^bb20(%295: i64):  // 2 preds: ^bb19, ^bb24
    %296 = llvm.icmp "slt" %295, %248 : i64
    llvm.cond_br %296, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%297 : i64)
  ^bb22(%299: i64):  // 2 preds: ^bb21, ^bb23
    %300 = llvm.icmp "slt" %299, %251 : i64
    llvm.cond_br %300, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %301 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.add %287, %27  : i64
    %303 = llvm.add %302, %27  : i64
    %304 = llvm.add %303, %27  : i64
    %305 = llvm.getelementptr %301[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.extractvalue %283[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.extractvalue %283[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mul %287, %308  : i64
    %310 = llvm.extractvalue %283[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.mul %291, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.extractvalue %283[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mul %295, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.add %315, %299  : i64
    %317 = llvm.getelementptr %307[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %306, %317 : !llvm.ptr<i32>
    %318 = llvm.add %299, %298  : i64
    llvm.br ^bb22(%318 : i64)
  ^bb24:  // pred: ^bb22
    %319 = llvm.add %295, %294  : i64
    llvm.br ^bb20(%319 : i64)
  ^bb25:  // pred: ^bb20
    %320 = llvm.add %291, %290  : i64
    llvm.br ^bb18(%320 : i64)
  ^bb26:  // pred: ^bb18
    %321 = llvm.add %287, %286  : i64
    llvm.br ^bb16(%321 : i64)
  ^bb27:  // pred: ^bb16
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mlir.null : !llvm.ptr<i1>
    %331 = llvm.getelementptr %330[%329] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i1> to i64
    %333 = llvm.mlir.constant(16 : index) : i64
    %334 = llvm.add %332, %333  : i64
    %335 = llvm.call @malloc(%334) : (i64) -> !llvm.ptr<i8>
    %336 = llvm.bitcast %335 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i1> to i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.sub %333, %338  : i64
    %340 = llvm.add %337, %339  : i64
    %341 = llvm.urem %340, %333  : i64
    %342 = llvm.sub %340, %341  : i64
    %343 = llvm.inttoptr %342 : i64 to !llvm.ptr<i1>
    %344 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %345 = llvm.insertvalue %336, %344[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %343, %345[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.insertvalue %347, %346[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %322, %348[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %323, %349[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %324, %350[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %325, %351[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %328, %352[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %327, %353[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %325, %354[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %326, %355[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%357 : i64)
  ^bb28(%360: i64):  // 2 preds: ^bb27, ^bb38
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%362 : i64)
  ^bb30(%365: i64):  // 2 preds: ^bb29, ^bb37
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%367 : i64)
  ^bb32(%370: i64):  // 2 preds: ^bb31, ^bb36
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%372 : i64)
  ^bb34(%375: i64):  // 2 preds: ^bb33, ^bb35
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %377 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %377[%27] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %379 = llvm.load %378 : !llvm.ptr<i32>
    %380 = llvm.extractvalue %283[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.extractvalue %283[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.mul %360, %381  : i64
    %383 = llvm.extractvalue %283[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mul %365, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.extractvalue %283[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mul %370, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.add %388, %375  : i64
    %390 = llvm.getelementptr %380[%389] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %391 = llvm.load %390 : !llvm.ptr<i32>
    %392 = llvm.icmp "eq" %379, %391 : i32
    %393 = llvm.extractvalue %356[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mul %360, %394  : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %365, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mul %370, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.add %401, %375  : i64
    %403 = llvm.getelementptr %393[%402] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %392, %403 : !llvm.ptr<i1>
    %404 = llvm.add %375, %374  : i64
    llvm.br ^bb34(%404 : i64)
  ^bb36:  // pred: ^bb34
    %405 = llvm.add %370, %369  : i64
    llvm.br ^bb32(%405 : i64)
  ^bb37:  // pred: ^bb32
    %406 = llvm.add %365, %364  : i64
    llvm.br ^bb30(%406 : i64)
  ^bb38:  // pred: ^bb30
    %407 = llvm.add %360, %359  : i64
    llvm.br ^bb28(%407 : i64)
  ^bb39:  // pred: ^bb28
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.null : !llvm.ptr<i32>
    %414 = llvm.getelementptr %413[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i32> to i64
    %416 = llvm.mlir.constant(16 : index) : i64
    %417 = llvm.add %415, %416  : i64
    %418 = llvm.call @malloc(%417) : (i64) -> !llvm.ptr<i8>
    %419 = llvm.bitcast %418 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %420 = llvm.ptrtoint %419 : !llvm.ptr<i32> to i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.sub %416, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.urem %423, %416  : i64
    %425 = llvm.sub %423, %424  : i64
    %426 = llvm.inttoptr %425 : i64 to !llvm.ptr<i32>
    %427 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %428 = llvm.insertvalue %419, %427[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %426, %428[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.insertvalue %430, %429[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %408, %431[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %409, %432[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %410, %433[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %411, %434[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %409, %435[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %410, %436[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(2 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%440 : i64)
  ^bb40(%443: i64):  // 2 preds: ^bb39, ^bb50
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%445 : i64)
  ^bb42(%448: i64):  // 2 preds: ^bb41, ^bb49
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%450 : i64)
  ^bb44(%453: i64):  // 2 preds: ^bb43, ^bb48
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%455 : i64)
  ^bb46(%458: i64):  // 2 preds: ^bb45, ^bb47
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %460 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.getelementptr %460[%458] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %462 = llvm.load %461 : !llvm.ptr<i32>
    %463 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.add %443, %448  : i64
    %465 = llvm.add %464, %453  : i64
    %466 = llvm.add %465, %458  : i64
    %467 = llvm.getelementptr %463[%466] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %468 = llvm.load %467 : !llvm.ptr<i32>
    %469 = llvm.mul %462, %468  : i32
    %470 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.add %443, %448  : i64
    %472 = llvm.add %471, %453  : i64
    %473 = llvm.add %472, %458  : i64
    %474 = llvm.getelementptr %470[%473] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %469, %474 : !llvm.ptr<i32>
    %475 = llvm.add %458, %457  : i64
    llvm.br ^bb46(%475 : i64)
  ^bb48:  // pred: ^bb46
    %476 = llvm.add %453, %452  : i64
    llvm.br ^bb44(%476 : i64)
  ^bb49:  // pred: ^bb44
    %477 = llvm.add %448, %447  : i64
    llvm.br ^bb42(%477 : i64)
  ^bb50:  // pred: ^bb42
    %478 = llvm.add %443, %442  : i64
    llvm.br ^bb40(%478 : i64)
  ^bb51:  // pred: ^bb40
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(4 : index) : i64
    %485 = llvm.mlir.constant(4 : index) : i64
    %486 = llvm.mlir.constant(8 : index) : i64
    %487 = llvm.mlir.null : !llvm.ptr<i32>
    %488 = llvm.getelementptr %487[%486] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %489 = llvm.ptrtoint %488 : !llvm.ptr<i32> to i64
    %490 = llvm.mlir.constant(16 : index) : i64
    %491 = llvm.add %489, %490  : i64
    %492 = llvm.call @malloc(%491) : (i64) -> !llvm.ptr<i8>
    %493 = llvm.bitcast %492 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %494 = llvm.ptrtoint %493 : !llvm.ptr<i32> to i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.sub %490, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.urem %497, %490  : i64
    %499 = llvm.sub %497, %498  : i64
    %500 = llvm.inttoptr %499 : i64 to !llvm.ptr<i32>
    %501 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %502 = llvm.insertvalue %493, %501[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %500, %502[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.insertvalue %504, %503[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %479, %505[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %480, %506[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %481, %507[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %482, %508[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %485, %509[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %484, %510[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %482, %511[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %483, %512[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%514 : i64)
  ^bb52(%517: i64):  // 2 preds: ^bb51, ^bb62
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%519 : i64)
  ^bb54(%522: i64):  // 2 preds: ^bb53, ^bb61
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%524 : i64)
  ^bb56(%527: i64):  // 2 preds: ^bb55, ^bb60
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%529 : i64)
  ^bb58(%532: i64):  // 2 preds: ^bb57, ^bb59
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %534 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.add %517, %522  : i64
    %536 = llvm.add %535, %527  : i64
    %537 = llvm.add %536, %532  : i64
    %538 = llvm.getelementptr %534[%537] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %539 = llvm.load %538 : !llvm.ptr<i32>
    %540 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mul %517, %541  : i64
    %543 = llvm.mlir.constant(4 : index) : i64
    %544 = llvm.mul %522, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mul %527, %546  : i64
    %548 = llvm.add %545, %547  : i64
    %549 = llvm.add %548, %532  : i64
    %550 = llvm.getelementptr %540[%549] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %539, %550 : !llvm.ptr<i32>
    %551 = llvm.add %532, %531  : i64
    llvm.br ^bb58(%551 : i64)
  ^bb60:  // pred: ^bb58
    %552 = llvm.add %527, %526  : i64
    llvm.br ^bb56(%552 : i64)
  ^bb61:  // pred: ^bb56
    %553 = llvm.add %522, %521  : i64
    llvm.br ^bb54(%553 : i64)
  ^bb62:  // pred: ^bb54
    %554 = llvm.add %517, %516  : i64
    llvm.br ^bb52(%554 : i64)
  ^bb63:  // pred: ^bb52
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.mlir.constant(2 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%555 : i64)
  ^bb64(%558: i64):  // 2 preds: ^bb63, ^bb74
    %559 = llvm.icmp "slt" %558, %556 : i64
    llvm.cond_br %559, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%560 : i64)
  ^bb66(%563: i64):  // 2 preds: ^bb65, ^bb73
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%565 : i64)
  ^bb68(%568: i64):  // 2 preds: ^bb67, ^bb72
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%570 : i64)
  ^bb70(%573: i64):  // 2 preds: ^bb69, ^bb71
    %574 = llvm.icmp "slt" %573, %571 : i64
    llvm.cond_br %574, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %575 = llvm.mlir.constant(1 : index) : i64
    %576 = llvm.add %573, %575  : i64
    %577 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.add %558, %563  : i64
    %579 = llvm.add %578, %568  : i64
    %580 = llvm.add %579, %573  : i64
    %581 = llvm.getelementptr %577[%580] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %582 = llvm.load %581 : !llvm.ptr<i32>
    %583 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.mlir.constant(4 : index) : i64
    %585 = llvm.mul %558, %584  : i64
    %586 = llvm.mlir.constant(4 : index) : i64
    %587 = llvm.mul %563, %586  : i64
    %588 = llvm.add %585, %587  : i64
    %589 = llvm.mlir.constant(4 : index) : i64
    %590 = llvm.mul %568, %589  : i64
    %591 = llvm.add %588, %590  : i64
    %592 = llvm.add %591, %576  : i64
    %593 = llvm.getelementptr %583[%592] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %582, %593 : !llvm.ptr<i32>
    %594 = llvm.add %573, %572  : i64
    llvm.br ^bb70(%594 : i64)
  ^bb72:  // pred: ^bb70
    %595 = llvm.add %568, %567  : i64
    llvm.br ^bb68(%595 : i64)
  ^bb73:  // pred: ^bb68
    %596 = llvm.add %563, %562  : i64
    llvm.br ^bb66(%596 : i64)
  ^bb74:  // pred: ^bb66
    %597 = llvm.add %558, %557  : i64
    llvm.br ^bb64(%597 : i64)
  ^bb75:  // pred: ^bb64
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%598 : i64)
  ^bb76(%601: i64):  // 2 preds: ^bb75, ^bb86
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%603 : i64)
  ^bb78(%606: i64):  // 2 preds: ^bb77, ^bb85
    %607 = llvm.icmp "slt" %606, %604 : i64
    llvm.cond_br %607, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%608 : i64)
  ^bb80(%611: i64):  // 2 preds: ^bb79, ^bb84
    %612 = llvm.icmp "slt" %611, %609 : i64
    llvm.cond_br %612, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %613 = llvm.mlir.constant(0 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%613 : i64)
  ^bb82(%616: i64):  // 2 preds: ^bb81, ^bb83
    %617 = llvm.icmp "slt" %616, %614 : i64
    llvm.cond_br %617, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %618 = llvm.mlir.constant(2 : index) : i64
    %619 = llvm.add %616, %618  : i64
    %620 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.add %601, %606  : i64
    %622 = llvm.add %621, %611  : i64
    %623 = llvm.add %622, %616  : i64
    %624 = llvm.getelementptr %620[%623] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %625 = llvm.load %624 : !llvm.ptr<i32>
    %626 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.mlir.constant(4 : index) : i64
    %628 = llvm.mul %601, %627  : i64
    %629 = llvm.mlir.constant(4 : index) : i64
    %630 = llvm.mul %606, %629  : i64
    %631 = llvm.add %628, %630  : i64
    %632 = llvm.mlir.constant(4 : index) : i64
    %633 = llvm.mul %611, %632  : i64
    %634 = llvm.add %631, %633  : i64
    %635 = llvm.add %634, %619  : i64
    %636 = llvm.getelementptr %626[%635] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %625, %636 : !llvm.ptr<i32>
    %637 = llvm.add %616, %615  : i64
    llvm.br ^bb82(%637 : i64)
  ^bb84:  // pred: ^bb82
    %638 = llvm.add %611, %610  : i64
    llvm.br ^bb80(%638 : i64)
  ^bb85:  // pred: ^bb80
    %639 = llvm.add %606, %605  : i64
    llvm.br ^bb78(%639 : i64)
  ^bb86:  // pred: ^bb78
    %640 = llvm.add %601, %600  : i64
    llvm.br ^bb76(%640 : i64)
  ^bb87:  // pred: ^bb76
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(2 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%641 : i64)
  ^bb88(%644: i64):  // 2 preds: ^bb87, ^bb98
    %645 = llvm.icmp "slt" %644, %642 : i64
    llvm.cond_br %645, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%646 : i64)
  ^bb90(%649: i64):  // 2 preds: ^bb89, ^bb97
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%651 : i64)
  ^bb92(%654: i64):  // 2 preds: ^bb91, ^bb96
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%656 : i64)
  ^bb94(%659: i64):  // 2 preds: ^bb93, ^bb95
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %661 = llvm.mlir.constant(3 : index) : i64
    %662 = llvm.add %659, %661  : i64
    %663 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %664 = llvm.add %644, %649  : i64
    %665 = llvm.add %664, %654  : i64
    %666 = llvm.add %665, %659  : i64
    %667 = llvm.getelementptr %663[%666] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %668 = llvm.load %667 : !llvm.ptr<i32>
    %669 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.mlir.constant(4 : index) : i64
    %671 = llvm.mul %644, %670  : i64
    %672 = llvm.mlir.constant(4 : index) : i64
    %673 = llvm.mul %649, %672  : i64
    %674 = llvm.add %671, %673  : i64
    %675 = llvm.mlir.constant(4 : index) : i64
    %676 = llvm.mul %654, %675  : i64
    %677 = llvm.add %674, %676  : i64
    %678 = llvm.add %677, %662  : i64
    %679 = llvm.getelementptr %669[%678] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %668, %679 : !llvm.ptr<i32>
    %680 = llvm.add %659, %658  : i64
    llvm.br ^bb94(%680 : i64)
  ^bb96:  // pred: ^bb94
    %681 = llvm.add %654, %653  : i64
    llvm.br ^bb92(%681 : i64)
  ^bb97:  // pred: ^bb92
    %682 = llvm.add %649, %648  : i64
    llvm.br ^bb90(%682 : i64)
  ^bb98:  // pred: ^bb90
    %683 = llvm.add %644, %643  : i64
    llvm.br ^bb88(%683 : i64)
  ^bb99:  // pred: ^bb88
    %684 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %685 = llvm.insertvalue %356, %684[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %686 = llvm.insertvalue %513, %685[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %686 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %12 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
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
    %46 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %48 = llvm.call @omTensorGetDataPtr(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %49 = llvm.bitcast %48 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %50 = llvm.insertvalue %49, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %49, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : i64) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.call @omTensorGetShape(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %55 = llvm.call @omTensorGetStrides(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.mlir.constant(0 : i64) : i64
    %57 = llvm.getelementptr %54[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %58 = llvm.load %57 : !llvm.ptr<i64>
    %59 = llvm.insertvalue %58, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.getelementptr %55[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %61 = llvm.load %60 : !llvm.ptr<i64>
    %62 = llvm.insertvalue %61, %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : i64) : i64
    %64 = llvm.getelementptr %54[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %65 = llvm.load %64 : !llvm.ptr<i64>
    %66 = llvm.insertvalue %65, %62[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %55[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %68 = llvm.load %67 : !llvm.ptr<i64>
    %69 = llvm.insertvalue %68, %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(2 : i64) : i64
    %71 = llvm.getelementptr %54[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %72 = llvm.load %71 : !llvm.ptr<i64>
    %73 = llvm.insertvalue %72, %69[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %55[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %75 = llvm.load %74 : !llvm.ptr<i64>
    %76 = llvm.insertvalue %75, %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.getelementptr %54[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %79 = llvm.load %78 : !llvm.ptr<i64>
    %80 = llvm.insertvalue %79, %76[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %55[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %82 = llvm.load %81 : !llvm.ptr<i64>
    %83 = llvm.insertvalue %82, %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %83, %46 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26, %46) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %84 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %85 = llvm.extractvalue %84[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %86 = llvm.extractvalue %84[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.mlir.constant(2 : i64) : i64
    %88 = llvm.mlir.constant(16 : i64) : i64
    %89 = llvm.call @malloc(%88) : (i64) -> !llvm.ptr<i8>
    %90 = llvm.bitcast %89 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %91 = llvm.mlir.constant(4 : i64) : i64
    %92 = llvm.call @omTensorCreateUntyped(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %85[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.bitcast %94 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %96 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%92, %93, %95, %97) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %98 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%92, %98) : (!llvm.ptr<i8>, i64) -> ()
    %99 = llvm.call @omTensorGetShape(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.call @omTensorGetStrides(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.extractvalue %85[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %99[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %85[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %100[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.extractvalue %85[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %99[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %85[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %100[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.extractvalue %85[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %99[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %85[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %100[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.extractvalue %85[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %99[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %85[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %100[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.getelementptr %90[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %92, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.mlir.constant(4 : i64) : i64
    %124 = llvm.call @omTensorCreateUntyped(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %128 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%124, %125, %127, %129) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %130 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%124, %130) : (!llvm.ptr<i8>, i64) -> ()
    %131 = llvm.call @omTensorGetShape(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.call @omTensorGetStrides(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %131[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %132[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(1 : i64) : i64
    %139 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %131[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %132[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(2 : i64) : i64
    %144 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %131[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %132[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(3 : i64) : i64
    %149 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %131[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %132[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(1 : i64) : i64
    %154 = llvm.getelementptr %90[%153] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %124, %154 : !llvm.ptr<ptr<i8>>
    %155 = llvm.call @omTensorListCreate(%90, %87, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %155 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<188 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<188 x i8>> to !llvm.ptr<i8>
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

