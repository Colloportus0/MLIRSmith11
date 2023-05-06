module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 4] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v7_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v7_0"]} {
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
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.null : !llvm.ptr<i32>
    %55 = llvm.getelementptr %54[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i32> to i64
    %57 = llvm.mlir.constant(16 : index) : i64
    %58 = llvm.add %56, %57  : i64
    %59 = llvm.call @malloc(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.bitcast %59 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<i32> to i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.sub %57, %62  : i64
    %64 = llvm.add %61, %63  : i64
    %65 = llvm.urem %64, %57  : i64
    %66 = llvm.sub %64, %65  : i64
    %67 = llvm.inttoptr %66 : i64 to !llvm.ptr<i32>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %69 = llvm.insertvalue %60, %68[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %48, %72[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %49, %73[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %50, %74[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %51, %75[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %49, %76[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %50, %77[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %51, %78[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %52, %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%81 : i64)
  ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb11
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%86 : i64)
  ^bb3(%89: i64):  // 2 preds: ^bb2, ^bb10
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%91 : i64)
  ^bb5(%94: i64):  // 2 preds: ^bb4, ^bb9
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%96 : i64)
  ^bb7(%99: i64):  // 2 preds: ^bb6, ^bb8
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %101 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.add %84, %89  : i64
    %103 = llvm.add %102, %94  : i64
    %104 = llvm.add %103, %99  : i64
    %105 = llvm.getelementptr %101[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %84, %108  : i64
    %110 = llvm.add %109, %89  : i64
    %111 = llvm.add %110, %94  : i64
    %112 = llvm.add %111, %99  : i64
    %113 = llvm.getelementptr %107[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %106, %113 : !llvm.ptr<i32>
    %114 = llvm.add %99, %98  : i64
    llvm.br ^bb7(%114 : i64)
  ^bb9:  // pred: ^bb7
    %115 = llvm.add %94, %93  : i64
    llvm.br ^bb5(%115 : i64)
  ^bb10:  // pred: ^bb5
    %116 = llvm.add %89, %88  : i64
    llvm.br ^bb3(%116 : i64)
  ^bb11:  // pred: ^bb3
    %117 = llvm.add %84, %83  : i64
    llvm.br ^bb1(%117 : i64)
  ^bb12:  // pred: ^bb1
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%118 : i64)
  ^bb13(%121: i64):  // 2 preds: ^bb12, ^bb23
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%123 : i64)
  ^bb15(%126: i64):  // 2 preds: ^bb14, ^bb22
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%128 : i64)
  ^bb17(%131: i64):  // 2 preds: ^bb16, ^bb21
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%133 : i64)
  ^bb19(%136: i64):  // 2 preds: ^bb18, ^bb20
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.add %126, %138  : i64
    %140 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.add %121, %126  : i64
    %142 = llvm.add %141, %131  : i64
    %143 = llvm.add %142, %136  : i64
    %144 = llvm.getelementptr %140[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mul %121, %147  : i64
    %149 = llvm.add %148, %139  : i64
    %150 = llvm.add %149, %131  : i64
    %151 = llvm.add %150, %136  : i64
    %152 = llvm.getelementptr %146[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %152 : !llvm.ptr<i32>
    %153 = llvm.add %136, %135  : i64
    llvm.br ^bb19(%153 : i64)
  ^bb21:  // pred: ^bb19
    %154 = llvm.add %131, %130  : i64
    llvm.br ^bb17(%154 : i64)
  ^bb22:  // pred: ^bb17
    %155 = llvm.add %126, %125  : i64
    llvm.br ^bb15(%155 : i64)
  ^bb23:  // pred: ^bb15
    %156 = llvm.add %121, %120  : i64
    llvm.br ^bb13(%156 : i64)
  ^bb24:  // pred: ^bb13
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(4 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(4 : index) : i64
    %163 = llvm.mlir.constant(8 : index) : i64
    %164 = llvm.mlir.constant(8 : index) : i64
    %165 = llvm.mlir.null : !llvm.ptr<i32>
    %166 = llvm.getelementptr %165[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %167 = llvm.ptrtoint %166 : !llvm.ptr<i32> to i64
    %168 = llvm.mlir.constant(16 : index) : i64
    %169 = llvm.add %167, %168  : i64
    %170 = llvm.call @malloc(%169) : (i64) -> !llvm.ptr<i8>
    %171 = llvm.bitcast %170 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i32> to i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.sub %168, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.urem %175, %168  : i64
    %177 = llvm.sub %175, %176  : i64
    %178 = llvm.inttoptr %177 : i64 to !llvm.ptr<i32>
    %179 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %180 = llvm.insertvalue %171, %179[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %178, %180[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.insertvalue %182, %181[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.insertvalue %157, %183[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %158, %184[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %159, %185[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %160, %186[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %163, %187[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %162, %188[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %160, %189[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %161, %190[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%192 : i64)
  ^bb25(%195: i64):  // 2 preds: ^bb24, ^bb35
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%197 : i64)
  ^bb27(%200: i64):  // 2 preds: ^bb26, ^bb34
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%202 : i64)
  ^bb29(%205: i64):  // 2 preds: ^bb28, ^bb33
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%207 : i64)
  ^bb31(%210: i64):  // 2 preds: ^bb30, ^bb32
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %212 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %195, %213  : i64
    %215 = llvm.add %214, %200  : i64
    %216 = llvm.add %215, %205  : i64
    %217 = llvm.add %216, %210  : i64
    %218 = llvm.getelementptr %212[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %219 = llvm.load %218 : !llvm.ptr<i32>
    %220 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(8 : index) : i64
    %222 = llvm.mul %195, %221  : i64
    %223 = llvm.mlir.constant(4 : index) : i64
    %224 = llvm.mul %200, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mul %205, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %210  : i64
    %230 = llvm.getelementptr %220[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %219, %230 : !llvm.ptr<i32>
    %231 = llvm.add %210, %209  : i64
    llvm.br ^bb31(%231 : i64)
  ^bb33:  // pred: ^bb31
    %232 = llvm.add %205, %204  : i64
    llvm.br ^bb29(%232 : i64)
  ^bb34:  // pred: ^bb29
    %233 = llvm.add %200, %199  : i64
    llvm.br ^bb27(%233 : i64)
  ^bb35:  // pred: ^bb27
    %234 = llvm.add %195, %194  : i64
    llvm.br ^bb25(%234 : i64)
  ^bb36:  // pred: ^bb25
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%235 : i64)
  ^bb37(%238: i64):  // 2 preds: ^bb36, ^bb47
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%240 : i64)
  ^bb39(%243: i64):  // 2 preds: ^bb38, ^bb46
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%245 : i64)
  ^bb41(%248: i64):  // 2 preds: ^bb40, ^bb45
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%250 : i64)
  ^bb43(%253: i64):  // 2 preds: ^bb42, ^bb44
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %238, %258  : i64
    %260 = llvm.add %259, %243  : i64
    %261 = llvm.add %260, %248  : i64
    %262 = llvm.add %261, %253  : i64
    %263 = llvm.getelementptr %257[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.load %263 : !llvm.ptr<i32>
    %265 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.mlir.constant(8 : index) : i64
    %267 = llvm.mul %238, %266  : i64
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mul %243, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mul %248, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.add %273, %256  : i64
    %275 = llvm.getelementptr %265[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %264, %275 : !llvm.ptr<i32>
    %276 = llvm.add %253, %252  : i64
    llvm.br ^bb43(%276 : i64)
  ^bb45:  // pred: ^bb43
    %277 = llvm.add %248, %247  : i64
    llvm.br ^bb41(%277 : i64)
  ^bb46:  // pred: ^bb41
    %278 = llvm.add %243, %242  : i64
    llvm.br ^bb39(%278 : i64)
  ^bb47:  // pred: ^bb39
    %279 = llvm.add %238, %237  : i64
    llvm.br ^bb37(%279 : i64)
  ^bb48:  // pred: ^bb37
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%280 : i64)
  ^bb49(%283: i64):  // 2 preds: ^bb48, ^bb59
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%285 : i64)
  ^bb51(%288: i64):  // 2 preds: ^bb50, ^bb58
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%290 : i64)
  ^bb53(%293: i64):  // 2 preds: ^bb52, ^bb57
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%295 : i64)
  ^bb55(%298: i64):  // 2 preds: ^bb54, ^bb56
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %283, %303  : i64
    %305 = llvm.add %304, %288  : i64
    %306 = llvm.add %305, %293  : i64
    %307 = llvm.add %306, %298  : i64
    %308 = llvm.getelementptr %302[%307] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %309 = llvm.load %308 : !llvm.ptr<i32>
    %310 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.mlir.constant(8 : index) : i64
    %312 = llvm.mul %283, %311  : i64
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mul %288, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.mlir.constant(4 : index) : i64
    %317 = llvm.mul %293, %316  : i64
    %318 = llvm.add %315, %317  : i64
    %319 = llvm.add %318, %301  : i64
    %320 = llvm.getelementptr %310[%319] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %309, %320 : !llvm.ptr<i32>
    %321 = llvm.add %298, %297  : i64
    llvm.br ^bb55(%321 : i64)
  ^bb57:  // pred: ^bb55
    %322 = llvm.add %293, %292  : i64
    llvm.br ^bb53(%322 : i64)
  ^bb58:  // pred: ^bb53
    %323 = llvm.add %288, %287  : i64
    llvm.br ^bb51(%323 : i64)
  ^bb59:  // pred: ^bb51
    %324 = llvm.add %283, %282  : i64
    llvm.br ^bb49(%324 : i64)
  ^bb60:  // pred: ^bb49
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%325 : i64)
  ^bb61(%328: i64):  // 2 preds: ^bb60, ^bb71
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%330 : i64)
  ^bb63(%333: i64):  // 2 preds: ^bb62, ^bb70
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%335 : i64)
  ^bb65(%338: i64):  // 2 preds: ^bb64, ^bb69
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%340 : i64)
  ^bb67(%343: i64):  // 2 preds: ^bb66, ^bb68
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %345 = llvm.mlir.constant(3 : index) : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mul %328, %348  : i64
    %350 = llvm.add %349, %333  : i64
    %351 = llvm.add %350, %338  : i64
    %352 = llvm.add %351, %343  : i64
    %353 = llvm.getelementptr %347[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(8 : index) : i64
    %357 = llvm.mul %328, %356  : i64
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mul %333, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mul %338, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.add %363, %346  : i64
    %365 = llvm.getelementptr %355[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %354, %365 : !llvm.ptr<i32>
    %366 = llvm.add %343, %342  : i64
    llvm.br ^bb67(%366 : i64)
  ^bb69:  // pred: ^bb67
    %367 = llvm.add %338, %337  : i64
    llvm.br ^bb65(%367 : i64)
  ^bb70:  // pred: ^bb65
    %368 = llvm.add %333, %332  : i64
    llvm.br ^bb63(%368 : i64)
  ^bb71:  // pred: ^bb63
    %369 = llvm.add %328, %327  : i64
    llvm.br ^bb61(%369 : i64)
  ^bb72:  // pred: ^bb61
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mlir.null : !llvm.ptr<i32>
    %379 = llvm.getelementptr %378[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i32> to i64
    %381 = llvm.mlir.constant(16 : index) : i64
    %382 = llvm.add %380, %381  : i64
    %383 = llvm.call @malloc(%382) : (i64) -> !llvm.ptr<i8>
    %384 = llvm.bitcast %383 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i32> to i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.sub %381, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.urem %388, %381  : i64
    %390 = llvm.sub %388, %389  : i64
    %391 = llvm.inttoptr %390 : i64 to !llvm.ptr<i32>
    %392 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %393 = llvm.insertvalue %384, %392[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %391, %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.insertvalue %395, %394[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %371, %397[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %372, %398[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %376, %400[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %373, %402[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %374, %403[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%405 : i64)
  ^bb73(%408: i64):  // 2 preds: ^bb72, ^bb83
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%410 : i64)
  ^bb75(%413: i64):  // 2 preds: ^bb74, ^bb82
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%415 : i64)
  ^bb77(%418: i64):  // 2 preds: ^bb76, ^bb81
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%420 : i64)
  ^bb79(%423: i64):  // 2 preds: ^bb78, ^bb80
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %425 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mul %408, %426  : i64
    %428 = llvm.add %427, %413  : i64
    %429 = llvm.add %428, %418  : i64
    %430 = llvm.add %429, %423  : i64
    %431 = llvm.getelementptr %425[%430] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %432 = llvm.load %431 : !llvm.ptr<i32>
    %433 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(4 : index) : i64
    %435 = llvm.mul %408, %434  : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mul %413, %436  : i64
    %438 = llvm.add %435, %437  : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mul %418, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.add %441, %423  : i64
    %443 = llvm.getelementptr %433[%442] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %432, %443 : !llvm.ptr<i32>
    %444 = llvm.add %423, %422  : i64
    llvm.br ^bb79(%444 : i64)
  ^bb81:  // pred: ^bb79
    %445 = llvm.add %418, %417  : i64
    llvm.br ^bb77(%445 : i64)
  ^bb82:  // pred: ^bb77
    %446 = llvm.add %413, %412  : i64
    llvm.br ^bb75(%446 : i64)
  ^bb83:  // pred: ^bb75
    %447 = llvm.add %408, %407  : i64
    llvm.br ^bb73(%447 : i64)
  ^bb84:  // pred: ^bb73
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%448 : i64)
  ^bb85(%451: i64):  // 2 preds: ^bb84, ^bb95
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(2 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%453 : i64)
  ^bb87(%456: i64):  // 2 preds: ^bb86, ^bb94
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%458 : i64)
  ^bb89(%461: i64):  // 2 preds: ^bb88, ^bb93
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%463 : i64)
  ^bb91(%466: i64):  // 2 preds: ^bb90, ^bb92
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.add %466, %468  : i64
    %470 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %451, %471  : i64
    %473 = llvm.add %472, %456  : i64
    %474 = llvm.add %473, %461  : i64
    %475 = llvm.add %474, %466  : i64
    %476 = llvm.getelementptr %470[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %477 = llvm.load %476 : !llvm.ptr<i32>
    %478 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mul %451, %479  : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mul %456, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mul %461, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.add %486, %469  : i64
    %488 = llvm.getelementptr %478[%487] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %477, %488 : !llvm.ptr<i32>
    %489 = llvm.add %466, %465  : i64
    llvm.br ^bb91(%489 : i64)
  ^bb93:  // pred: ^bb91
    %490 = llvm.add %461, %460  : i64
    llvm.br ^bb89(%490 : i64)
  ^bb94:  // pred: ^bb89
    %491 = llvm.add %456, %455  : i64
    llvm.br ^bb87(%491 : i64)
  ^bb95:  // pred: ^bb87
    %492 = llvm.add %451, %450  : i64
    llvm.br ^bb85(%492 : i64)
  ^bb96:  // pred: ^bb85
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mlir.constant(4 : index) : i64
    %501 = llvm.mlir.null : !llvm.ptr<i1>
    %502 = llvm.getelementptr %501[%500] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %503 = llvm.ptrtoint %502 : !llvm.ptr<i1> to i64
    %504 = llvm.mlir.constant(16 : index) : i64
    %505 = llvm.add %503, %504  : i64
    %506 = llvm.call @malloc(%505) : (i64) -> !llvm.ptr<i8>
    %507 = llvm.bitcast %506 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %508 = llvm.ptrtoint %507 : !llvm.ptr<i1> to i64
    %509 = llvm.mlir.constant(1 : index) : i64
    %510 = llvm.sub %504, %509  : i64
    %511 = llvm.add %508, %510  : i64
    %512 = llvm.urem %511, %504  : i64
    %513 = llvm.sub %511, %512  : i64
    %514 = llvm.inttoptr %513 : i64 to !llvm.ptr<i1>
    %515 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %516 = llvm.insertvalue %507, %515[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %514, %516[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.insertvalue %518, %517[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %493, %519[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %494, %520[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %495, %521[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %496, %522[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %499, %523[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.insertvalue %498, %524[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %496, %525[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %497, %526[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%528 : i64)
  ^bb97(%531: i64):  // 2 preds: ^bb96, ^bb107
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%533 : i64)
  ^bb99(%536: i64):  // 2 preds: ^bb98, ^bb106
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%538 : i64)
  ^bb101(%541: i64):  // 2 preds: ^bb100, ^bb105
    %542 = llvm.icmp "slt" %541, %539 : i64
    llvm.cond_br %542, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%543 : i64)
  ^bb103(%546: i64):  // 2 preds: ^bb102, ^bb104
    %547 = llvm.icmp "slt" %546, %544 : i64
    llvm.cond_br %547, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %548 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mul %531, %549  : i64
    %551 = llvm.mlir.constant(2 : index) : i64
    %552 = llvm.mul %536, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.mlir.constant(2 : index) : i64
    %555 = llvm.mul %541, %554  : i64
    %556 = llvm.add %553, %555  : i64
    %557 = llvm.add %556, %546  : i64
    %558 = llvm.getelementptr %548[%557] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %559 = llvm.load %558 : !llvm.ptr<i32>
    %560 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.add %531, %24  : i64
    %562 = llvm.add %561, %541  : i64
    %563 = llvm.add %562, %24  : i64
    %564 = llvm.getelementptr %560[%563] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %565 = llvm.load %564 : !llvm.ptr<i32>
    %566 = llvm.icmp "eq" %559, %565 : i32
    %567 = llvm.extractvalue %527[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.mlir.constant(4 : index) : i64
    %569 = llvm.mul %531, %568  : i64
    %570 = llvm.mlir.constant(2 : index) : i64
    %571 = llvm.mul %536, %570  : i64
    %572 = llvm.add %569, %571  : i64
    %573 = llvm.mlir.constant(2 : index) : i64
    %574 = llvm.mul %541, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.add %575, %546  : i64
    %577 = llvm.getelementptr %567[%576] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %566, %577 : !llvm.ptr<i1>
    %578 = llvm.add %546, %545  : i64
    llvm.br ^bb103(%578 : i64)
  ^bb105:  // pred: ^bb103
    %579 = llvm.add %541, %540  : i64
    llvm.br ^bb101(%579 : i64)
  ^bb106:  // pred: ^bb101
    %580 = llvm.add %536, %535  : i64
    llvm.br ^bb99(%580 : i64)
  ^bb107:  // pred: ^bb99
    %581 = llvm.add %531, %530  : i64
    llvm.br ^bb97(%581 : i64)
  ^bb108:  // pred: ^bb97
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.mlir.constant(2 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.mlir.constant(2 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    %587 = llvm.mlir.constant(2 : index) : i64
    %588 = llvm.mlir.constant(4 : index) : i64
    %589 = llvm.mlir.constant(4 : index) : i64
    %590 = llvm.mlir.null : !llvm.ptr<i1>
    %591 = llvm.getelementptr %590[%589] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %592 = llvm.ptrtoint %591 : !llvm.ptr<i1> to i64
    %593 = llvm.mlir.constant(16 : index) : i64
    %594 = llvm.add %592, %593  : i64
    %595 = llvm.call @malloc(%594) : (i64) -> !llvm.ptr<i8>
    %596 = llvm.bitcast %595 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %597 = llvm.ptrtoint %596 : !llvm.ptr<i1> to i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.sub %593, %598  : i64
    %600 = llvm.add %597, %599  : i64
    %601 = llvm.urem %600, %593  : i64
    %602 = llvm.sub %600, %601  : i64
    %603 = llvm.inttoptr %602 : i64 to !llvm.ptr<i1>
    %604 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %605 = llvm.insertvalue %596, %604[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.insertvalue %603, %605[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.insertvalue %607, %606[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %582, %608[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %583, %609[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %584, %610[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.insertvalue %585, %611[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %588, %612[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %587, %613[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.insertvalue %585, %614[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.insertvalue %586, %615[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%617 : i64)
  ^bb109(%620: i64):  // 2 preds: ^bb108, ^bb119
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.mlir.constant(2 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%622 : i64)
  ^bb111(%625: i64):  // 2 preds: ^bb110, ^bb118
    %626 = llvm.icmp "slt" %625, %623 : i64
    llvm.cond_br %626, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %627 = llvm.mlir.constant(0 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    %629 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%627 : i64)
  ^bb113(%630: i64):  // 2 preds: ^bb112, ^bb117
    %631 = llvm.icmp "slt" %630, %628 : i64
    llvm.cond_br %631, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.mlir.constant(2 : index) : i64
    %634 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%632 : i64)
  ^bb115(%635: i64):  // 2 preds: ^bb114, ^bb116
    %636 = llvm.icmp "slt" %635, %633 : i64
    llvm.cond_br %636, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %637 = llvm.extractvalue %527[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.mlir.constant(4 : index) : i64
    %639 = llvm.mul %620, %638  : i64
    %640 = llvm.mlir.constant(2 : index) : i64
    %641 = llvm.mul %625, %640  : i64
    %642 = llvm.add %639, %641  : i64
    %643 = llvm.mlir.constant(2 : index) : i64
    %644 = llvm.mul %630, %643  : i64
    %645 = llvm.add %642, %644  : i64
    %646 = llvm.add %645, %635  : i64
    %647 = llvm.getelementptr %637[%646] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %648 = llvm.load %647 : !llvm.ptr<i1>
    %649 = llvm.extractvalue %527[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.mlir.constant(4 : index) : i64
    %651 = llvm.mul %620, %650  : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mul %625, %652  : i64
    %654 = llvm.add %651, %653  : i64
    %655 = llvm.mlir.constant(2 : index) : i64
    %656 = llvm.mul %630, %655  : i64
    %657 = llvm.add %654, %656  : i64
    %658 = llvm.add %657, %635  : i64
    %659 = llvm.getelementptr %649[%658] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %660 = llvm.load %659 : !llvm.ptr<i1>
    %661 = llvm.xor %648, %660  : i1
    %662 = llvm.extractvalue %616[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %663 = llvm.mlir.constant(4 : index) : i64
    %664 = llvm.mul %620, %663  : i64
    %665 = llvm.mlir.constant(2 : index) : i64
    %666 = llvm.mul %625, %665  : i64
    %667 = llvm.add %664, %666  : i64
    %668 = llvm.mlir.constant(2 : index) : i64
    %669 = llvm.mul %630, %668  : i64
    %670 = llvm.add %667, %669  : i64
    %671 = llvm.add %670, %635  : i64
    %672 = llvm.getelementptr %662[%671] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %661, %672 : !llvm.ptr<i1>
    %673 = llvm.add %635, %634  : i64
    llvm.br ^bb115(%673 : i64)
  ^bb117:  // pred: ^bb115
    %674 = llvm.add %630, %629  : i64
    llvm.br ^bb113(%674 : i64)
  ^bb118:  // pred: ^bb113
    %675 = llvm.add %625, %624  : i64
    llvm.br ^bb111(%675 : i64)
  ^bb119:  // pred: ^bb111
    %676 = llvm.add %620, %619  : i64
    llvm.br ^bb109(%676 : i64)
  ^bb120:  // pred: ^bb109
    %677 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %678 = llvm.insertvalue %191, %677[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %679 = llvm.insertvalue %616, %678[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %679 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v7_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
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

