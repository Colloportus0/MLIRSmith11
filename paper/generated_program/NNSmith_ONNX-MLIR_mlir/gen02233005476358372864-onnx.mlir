module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : i32) : i32
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(4 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.null : !llvm.ptr<i64>
    %57 = llvm.getelementptr %56[%54] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i64> to i64
    %59 = llvm.mlir.constant(16 : index) : i64
    %60 = llvm.add %58, %59  : i64
    %61 = llvm.call @malloc(%60) : (i64) -> !llvm.ptr<i8>
    %62 = llvm.bitcast %61 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<i64> to i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.sub %59, %64  : i64
    %66 = llvm.add %63, %65  : i64
    %67 = llvm.urem %66, %59  : i64
    %68 = llvm.sub %66, %67  : i64
    %69 = llvm.inttoptr %68 : i64 to !llvm.ptr<i64>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.insertvalue %62, %70[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %54, %74[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %55, %75[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(4 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%77 : i64)
  ^bb1(%80: i64):  // 2 preds: ^bb0, ^bb2
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %82 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %82[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %83 : !llvm.ptr<i64>
    %84 = llvm.add %80, %79  : i64
    llvm.br ^bb1(%84 : i64)
  ^bb3:  // pred: ^bb1
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.null : !llvm.ptr<i64>
    %88 = llvm.getelementptr %87[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<i64> to i64
    %90 = llvm.mlir.constant(16 : index) : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i64> to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %90, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.urem %97, %90  : i64
    %99 = llvm.sub %97, %98  : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr<i64>
    %101 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %85, %105[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %86, %106[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%108 : i64)
  ^bb4(%111: i64):  // 2 preds: ^bb3, ^bb5
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %113 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.getelementptr %113[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %115 = llvm.load %114 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.mul %115, %117  : i64
    %119 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.getelementptr %119[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %120 : !llvm.ptr<i64>
    %121 = llvm.add %111, %110  : i64
    llvm.br ^bb4(%121 : i64)
  ^bb6:  // pred: ^bb4
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.null : !llvm.ptr<i1>
    %125 = llvm.getelementptr %124[%122] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i1> to i64
    %127 = llvm.mlir.constant(16 : index) : i64
    %128 = llvm.add %126, %127  : i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i1> to i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.sub %127, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.urem %134, %127  : i64
    %136 = llvm.sub %134, %135  : i64
    %137 = llvm.inttoptr %136 : i64 to !llvm.ptr<i1>
    %138 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %139 = llvm.insertvalue %130, %138[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %122, %142[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.insertvalue %123, %143[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%145 : i64)
  ^bb7(%148: i64):  // 2 preds: ^bb6, ^bb8
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %150 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.getelementptr %150[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %152 = llvm.load %151 : !llvm.ptr<i64>
    %153 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %153[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.icmp "eq" %152, %155 : i64
    %157 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.getelementptr %157[%148] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %156, %158 : !llvm.ptr<i1>
    %159 = llvm.add %148, %147  : i64
    llvm.br ^bb7(%159 : i64)
  ^bb9:  // pred: ^bb7
    %160 = llvm.mlir.constant(4 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.null : !llvm.ptr<i64>
    %163 = llvm.getelementptr %162[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.ptrtoint %163 : !llvm.ptr<i64> to i64
    %165 = llvm.mlir.constant(16 : index) : i64
    %166 = llvm.add %164, %165  : i64
    %167 = llvm.call @malloc(%166) : (i64) -> !llvm.ptr<i8>
    %168 = llvm.bitcast %167 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %169 = llvm.ptrtoint %168 : !llvm.ptr<i64> to i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.sub %165, %170  : i64
    %172 = llvm.add %169, %171  : i64
    %173 = llvm.urem %172, %165  : i64
    %174 = llvm.sub %172, %173  : i64
    %175 = llvm.inttoptr %174 : i64 to !llvm.ptr<i64>
    %176 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %177 = llvm.insertvalue %168, %176[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %175, %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.insertvalue %179, %178[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %160, %180[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %161, %181[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(4 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%183 : i64)
  ^bb10(%186: i64):  // 2 preds: ^bb9, ^bb11
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %188 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.getelementptr %188[%186] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %190 = llvm.load %189 : !llvm.ptr<i1>
    %191 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.getelementptr %191[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %193 = llvm.load %192 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.getelementptr %194[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.select %190, %193, %196 : i1, i64
    %198 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.getelementptr %198[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %199 : !llvm.ptr<i64>
    %200 = llvm.add %186, %185  : i64
    llvm.br ^bb10(%200 : i64)
  ^bb12:  // pred: ^bb10
    %201 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %203 = llvm.load %202 : !llvm.ptr<i64>
    %204 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.getelementptr %204[%22] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %206 = llvm.load %205 : !llvm.ptr<i64>
    %207 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.getelementptr %207[%21] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %209 = llvm.load %208 : !llvm.ptr<i64>
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mul %210, %209  : i64
    %213 = llvm.mul %212, %206  : i64
    %214 = llvm.mul %213, %203  : i64
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
    %229 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %230 = llvm.insertvalue %221, %229[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %228, %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.insertvalue %232, %231[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %203, %233[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %206, %234[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %209, %235[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %210, %236[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %213, %237[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %212, %238[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %210, %239[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %211, %240[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%242 : i64)
  ^bb13(%244: i64):  // 2 preds: ^bb12, ^bb23
    %245 = llvm.icmp "slt" %244, %203 : i64
    llvm.cond_br %245, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%246 : i64)
  ^bb15(%248: i64):  // 2 preds: ^bb14, ^bb22
    %249 = llvm.icmp "slt" %248, %206 : i64
    llvm.cond_br %249, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%250 : i64)
  ^bb17(%252: i64):  // 2 preds: ^bb16, ^bb21
    %253 = llvm.icmp "slt" %252, %209 : i64
    llvm.cond_br %253, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%254 : i64)
  ^bb19(%257: i64):  // 2 preds: ^bb18, ^bb20
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %259 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %23, %260  : i64
    %262 = llvm.add %261, %257  : i64
    %263 = llvm.getelementptr %259[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.load %263 : !llvm.ptr<i32>
    %265 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.extractvalue %241[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mul %244, %266  : i64
    %268 = llvm.extractvalue %241[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.mul %248, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mul %252, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.add %273, %257  : i64
    %275 = llvm.getelementptr %265[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %264, %275 : !llvm.ptr<i32>
    %276 = llvm.add %257, %256  : i64
    llvm.br ^bb19(%276 : i64)
  ^bb21:  // pred: ^bb19
    %277 = llvm.add %252, %251  : i64
    llvm.br ^bb17(%277 : i64)
  ^bb22:  // pred: ^bb17
    %278 = llvm.add %248, %247  : i64
    llvm.br ^bb15(%278 : i64)
  ^bb23:  // pred: ^bb15
    %279 = llvm.add %244, %243  : i64
    llvm.br ^bb13(%279 : i64)
  ^bb24:  // pred: ^bb13
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mlir.constant(4 : index) : i64
    %288 = llvm.mlir.null : !llvm.ptr<i32>
    %289 = llvm.getelementptr %288[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %307 = llvm.insertvalue %280, %306[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %281, %307[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %282, %308[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %283, %309[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %286, %310[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %283, %312[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %284, %313[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%315 : i64)
  ^bb25(%318: i64):  // 2 preds: ^bb24, ^bb35
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%320 : i64)
  ^bb27(%323: i64):  // 2 preds: ^bb26, ^bb34
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%325 : i64)
  ^bb29(%328: i64):  // 2 preds: ^bb28, ^bb33
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%330 : i64)
  ^bb31(%333: i64):  // 2 preds: ^bb30, ^bb32
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %335 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mul %318, %336  : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mul %323, %338  : i64
    %340 = llvm.add %337, %339  : i64
    %341 = llvm.add %340, %328  : i64
    %342 = llvm.add %341, %23  : i64
    %343 = llvm.getelementptr %335[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %344 = llvm.load %343 : !llvm.ptr<i32>
    %345 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %23, %346  : i64
    %348 = llvm.add %347, %333  : i64
    %349 = llvm.getelementptr %345[%348] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %350 = llvm.load %349 : !llvm.ptr<i32>
    %351 = llvm.add %344, %350  : i32
    %352 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %318, %353  : i64
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mul %323, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mul %328, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.add %360, %333  : i64
    %362 = llvm.getelementptr %352[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %351, %362 : !llvm.ptr<i32>
    %363 = llvm.add %333, %332  : i64
    llvm.br ^bb31(%363 : i64)
  ^bb33:  // pred: ^bb31
    %364 = llvm.add %328, %327  : i64
    llvm.br ^bb29(%364 : i64)
  ^bb34:  // pred: ^bb29
    %365 = llvm.add %323, %322  : i64
    llvm.br ^bb27(%365 : i64)
  ^bb35:  // pred: ^bb27
    %366 = llvm.add %318, %317  : i64
    llvm.br ^bb25(%366 : i64)
  ^bb36:  // pred: ^bb25
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mul %370, %206  : i64
    %372 = llvm.mul %371, %203  : i64
    %373 = llvm.mlir.null : !llvm.ptr<i32>
    %374 = llvm.getelementptr %373[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %375 = llvm.ptrtoint %374 : !llvm.ptr<i32> to i64
    %376 = llvm.mlir.constant(16 : index) : i64
    %377 = llvm.add %375, %376  : i64
    %378 = llvm.call @malloc(%377) : (i64) -> !llvm.ptr<i8>
    %379 = llvm.bitcast %378 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i32> to i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.sub %376, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.urem %383, %376  : i64
    %385 = llvm.sub %383, %384  : i64
    %386 = llvm.inttoptr %385 : i64 to !llvm.ptr<i32>
    %387 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %388 = llvm.insertvalue %379, %387[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %386, %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.insertvalue %390, %389[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %203, %391[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %206, %392[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %368, %394[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %371, %395[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %369, %398[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.icmp "sgt" %209, %22 : i64
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%401 : i64)
  ^bb37(%403: i64):  // 2 preds: ^bb36, ^bb47
    %404 = llvm.icmp "slt" %403, %203 : i64
    llvm.cond_br %404, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%405 : i64)
  ^bb39(%407: i64):  // 2 preds: ^bb38, ^bb46
    %408 = llvm.icmp "slt" %407, %206 : i64
    llvm.cond_br %408, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%409 : i64)
  ^bb41(%412: i64):  // 2 preds: ^bb40, ^bb45
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%414 : i64)
  ^bb43(%417: i64):  // 2 preds: ^bb42, ^bb44
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %419 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.mul %23, %420  : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mul %23, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mul %412, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.add %427, %417  : i64
    %429 = llvm.getelementptr %419[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %430 = llvm.load %429 : !llvm.ptr<i32>
    %431 = llvm.select %400, %412, %23 : i1, i64
    %432 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.extractvalue %241[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mul %403, %433  : i64
    %435 = llvm.extractvalue %241[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mul %407, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mul %431, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.add %440, %417  : i64
    %442 = llvm.getelementptr %432[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %443 = llvm.load %442 : !llvm.ptr<i32>
    %444 = llvm.mul %430, %443  : i32
    %445 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.extractvalue %399[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mul %403, %446  : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %407, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mul %412, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.add %453, %417  : i64
    %455 = llvm.getelementptr %445[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %444, %455 : !llvm.ptr<i32>
    %456 = llvm.add %417, %416  : i64
    llvm.br ^bb43(%456 : i64)
  ^bb45:  // pred: ^bb43
    %457 = llvm.add %412, %411  : i64
    llvm.br ^bb41(%457 : i64)
  ^bb46:  // pred: ^bb41
    %458 = llvm.add %407, %406  : i64
    llvm.br ^bb39(%458 : i64)
  ^bb47:  // pred: ^bb39
    %459 = llvm.add %403, %402  : i64
    llvm.br ^bb37(%459 : i64)
  ^bb48:  // pred: ^bb37
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(4 : index) : i64
    %466 = llvm.mlir.constant(4 : index) : i64
    %467 = llvm.mlir.constant(4 : index) : i64
    %468 = llvm.mlir.null : !llvm.ptr<i32>
    %469 = llvm.getelementptr %468[%467] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %470 = llvm.ptrtoint %469 : !llvm.ptr<i32> to i64
    %471 = llvm.mlir.constant(16 : index) : i64
    %472 = llvm.add %470, %471  : i64
    %473 = llvm.call @malloc(%472) : (i64) -> !llvm.ptr<i8>
    %474 = llvm.bitcast %473 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %475 = llvm.ptrtoint %474 : !llvm.ptr<i32> to i64
    %476 = llvm.mlir.constant(1 : index) : i64
    %477 = llvm.sub %471, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.urem %478, %471  : i64
    %480 = llvm.sub %478, %479  : i64
    %481 = llvm.inttoptr %480 : i64 to !llvm.ptr<i32>
    %482 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %483 = llvm.insertvalue %474, %482[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %481, %483[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.insertvalue %485, %484[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %460, %486[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %461, %487[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %462, %488[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %463, %489[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %466, %490[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %465, %491[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %463, %492[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %464, %493[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%495 : i64)
  ^bb49(%498: i64):  // 2 preds: ^bb48, ^bb59
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%500 : i64)
  ^bb51(%503: i64):  // 2 preds: ^bb50, ^bb58
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%505 : i64)
  ^bb53(%508: i64):  // 2 preds: ^bb52, ^bb57
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%510 : i64)
  ^bb55(%513: i64):  // 2 preds: ^bb54, ^bb56
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %515 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.mlir.constant(4 : index) : i64
    %517 = llvm.mul %23, %516  : i64
    %518 = llvm.mlir.constant(4 : index) : i64
    %519 = llvm.mul %23, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mul %508, %521  : i64
    %523 = llvm.add %520, %522  : i64
    %524 = llvm.add %523, %513  : i64
    %525 = llvm.getelementptr %515[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %526 = llvm.load %525 : !llvm.ptr<i32>
    %527 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.extractvalue %399[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.mul %498, %528  : i64
    %530 = llvm.mlir.constant(4 : index) : i64
    %531 = llvm.mul %503, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.mlir.constant(2 : index) : i64
    %534 = llvm.mul %508, %533  : i64
    %535 = llvm.add %532, %534  : i64
    %536 = llvm.add %535, %513  : i64
    %537 = llvm.getelementptr %527[%536] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %538 = llvm.load %537 : !llvm.ptr<i32>
    %539 = llvm.mul %526, %538  : i32
    %540 = llvm.extractvalue %494[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mul %498, %541  : i64
    %543 = llvm.mlir.constant(4 : index) : i64
    %544 = llvm.mul %503, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.mlir.constant(2 : index) : i64
    %547 = llvm.mul %508, %546  : i64
    %548 = llvm.add %545, %547  : i64
    %549 = llvm.add %548, %513  : i64
    %550 = llvm.getelementptr %540[%549] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %539, %550 : !llvm.ptr<i32>
    %551 = llvm.add %513, %512  : i64
    llvm.br ^bb55(%551 : i64)
  ^bb57:  // pred: ^bb55
    %552 = llvm.add %508, %507  : i64
    llvm.br ^bb53(%552 : i64)
  ^bb58:  // pred: ^bb53
    %553 = llvm.add %503, %502  : i64
    llvm.br ^bb51(%553 : i64)
  ^bb59:  // pred: ^bb51
    %554 = llvm.add %498, %497  : i64
    llvm.br ^bb49(%554 : i64)
  ^bb60:  // pred: ^bb49
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.mlir.constant(2 : index) : i64
    %558 = llvm.mlir.constant(2 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(4 : index) : i64
    %561 = llvm.mlir.constant(4 : index) : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mlir.null : !llvm.ptr<i32>
    %564 = llvm.getelementptr %563[%562] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %565 = llvm.ptrtoint %564 : !llvm.ptr<i32> to i64
    %566 = llvm.mlir.constant(16 : index) : i64
    %567 = llvm.add %565, %566  : i64
    %568 = llvm.call @malloc(%567) : (i64) -> !llvm.ptr<i8>
    %569 = llvm.bitcast %568 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %570 = llvm.ptrtoint %569 : !llvm.ptr<i32> to i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.sub %566, %571  : i64
    %573 = llvm.add %570, %572  : i64
    %574 = llvm.urem %573, %566  : i64
    %575 = llvm.sub %573, %574  : i64
    %576 = llvm.inttoptr %575 : i64 to !llvm.ptr<i32>
    %577 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %578 = llvm.insertvalue %569, %577[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.insertvalue %576, %578[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.insertvalue %580, %579[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.insertvalue %555, %581[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.insertvalue %556, %582[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %557, %583[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %558, %584[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %561, %585[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %560, %586[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %558, %587[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %559, %588[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%590 : i64)
  ^bb61(%593: i64):  // 2 preds: ^bb60, ^bb71
    %594 = llvm.icmp "slt" %593, %591 : i64
    llvm.cond_br %594, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %595 = llvm.mlir.constant(0 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%595 : i64)
  ^bb63(%598: i64):  // 2 preds: ^bb62, ^bb70
    %599 = llvm.icmp "slt" %598, %596 : i64
    llvm.cond_br %599, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%600 : i64)
  ^bb65(%603: i64):  // 2 preds: ^bb64, ^bb69
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(2 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%605 : i64)
  ^bb67(%608: i64):  // 2 preds: ^bb66, ^bb68
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %610 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.mlir.constant(4 : index) : i64
    %612 = llvm.mul %593, %611  : i64
    %613 = llvm.mlir.constant(4 : index) : i64
    %614 = llvm.mul %598, %613  : i64
    %615 = llvm.add %612, %614  : i64
    %616 = llvm.mlir.constant(2 : index) : i64
    %617 = llvm.mul %603, %616  : i64
    %618 = llvm.add %615, %617  : i64
    %619 = llvm.add %618, %608  : i64
    %620 = llvm.getelementptr %610[%619] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %621 = llvm.load %620 : !llvm.ptr<i32>
    %622 = llvm.sub %20, %621  : i32
    %623 = llvm.extractvalue %589[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.mlir.constant(4 : index) : i64
    %625 = llvm.mul %593, %624  : i64
    %626 = llvm.mlir.constant(4 : index) : i64
    %627 = llvm.mul %598, %626  : i64
    %628 = llvm.add %625, %627  : i64
    %629 = llvm.mlir.constant(2 : index) : i64
    %630 = llvm.mul %603, %629  : i64
    %631 = llvm.add %628, %630  : i64
    %632 = llvm.add %631, %608  : i64
    %633 = llvm.getelementptr %623[%632] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %622, %633 : !llvm.ptr<i32>
    %634 = llvm.add %608, %607  : i64
    llvm.br ^bb67(%634 : i64)
  ^bb69:  // pred: ^bb67
    %635 = llvm.add %603, %602  : i64
    llvm.br ^bb65(%635 : i64)
  ^bb70:  // pred: ^bb65
    %636 = llvm.add %598, %597  : i64
    llvm.br ^bb63(%636 : i64)
  ^bb71:  // pred: ^bb63
    %637 = llvm.add %593, %592  : i64
    llvm.br ^bb61(%637 : i64)
  ^bb72:  // pred: ^bb61
    %638 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %639 = llvm.insertvalue %494, %638[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %640 = llvm.insertvalue %589, %639[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %640 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %72[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %72[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(0 : i64) : i64
    %109 = llvm.getelementptr %77[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.mlir.constant(4 : i64) : i64
    %111 = llvm.call @omTensorCreateUntyped(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.bitcast %113 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %115 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%111, %112, %114, %116) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %117 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%111, %117) : (!llvm.ptr<i8>, i64) -> ()
    %118 = llvm.call @omTensorGetShape(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %119 = llvm.call @omTensorGetStrides(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.mlir.constant(0 : i64) : i64
    %121 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %118[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %119[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %118[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %119[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(2 : i64) : i64
    %131 = llvm.extractvalue %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %118[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %119[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(3 : i64) : i64
    %136 = llvm.extractvalue %73[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %118[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %73[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %119[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.getelementptr %77[%140] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %111, %141 : !llvm.ptr<ptr<i8>>
    %142 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %142 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

