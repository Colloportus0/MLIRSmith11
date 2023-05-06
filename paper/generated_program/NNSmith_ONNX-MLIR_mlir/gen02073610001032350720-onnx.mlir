module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 6] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<[6, 5]> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(0 : i64) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x i32>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<2 x i32>> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.null : !llvm.ptr<i32>
    %34 = llvm.getelementptr %33[%31] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %35 = llvm.ptrtoint %34 : !llvm.ptr<i32> to i64
    %36 = llvm.mlir.constant(16 : index) : i64
    %37 = llvm.add %35, %36  : i64
    %38 = llvm.call @malloc(%37) : (i64) -> !llvm.ptr<i8>
    %39 = llvm.bitcast %38 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<i32> to i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.sub %36, %41  : i64
    %43 = llvm.add %40, %42  : i64
    %44 = llvm.urem %43, %36  : i64
    %45 = llvm.sub %43, %44  : i64
    %46 = llvm.inttoptr %45 : i64 to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %39, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %31, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %32, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%54 : i64)
  ^bb1(%57: i64):  // 2 preds: ^bb0, ^bb2
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %59 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %61 = llvm.load %60 : !llvm.ptr<i32>
    %62 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %64 = llvm.load %63 : !llvm.ptr<i32>
    %65 = llvm.add %61, %64  : i32
    %66 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.getelementptr %66[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %65, %67 : !llvm.ptr<i32>
    %68 = llvm.add %57, %56  : i64
    llvm.br ^bb1(%68 : i64)
  ^bb3:  // pred: ^bb1
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.null : !llvm.ptr<i32>
    %78 = llvm.getelementptr %77[%76] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %79 = llvm.ptrtoint %78 : !llvm.ptr<i32> to i64
    %80 = llvm.mlir.constant(16 : index) : i64
    %81 = llvm.add %79, %80  : i64
    %82 = llvm.call @malloc(%81) : (i64) -> !llvm.ptr<i8>
    %83 = llvm.bitcast %82 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %84 = llvm.ptrtoint %83 : !llvm.ptr<i32> to i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.sub %80, %85  : i64
    %87 = llvm.add %84, %86  : i64
    %88 = llvm.urem %87, %80  : i64
    %89 = llvm.sub %87, %88  : i64
    %90 = llvm.inttoptr %89 : i64 to !llvm.ptr<i32>
    %91 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %92 = llvm.insertvalue %83, %91[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %90, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %69, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %70, %96[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %75, %99[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %72, %101[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %73, %102[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%104 : i64)
  ^bb4(%107: i64):  // 2 preds: ^bb3, ^bb14
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb5, ^bb15
  ^bb5:  // pred: ^bb4
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%109 : i64)
  ^bb6(%112: i64):  // 2 preds: ^bb5, ^bb13
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb7, ^bb14
  ^bb7:  // pred: ^bb6
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%114 : i64)
  ^bb8(%117: i64):  // 2 preds: ^bb7, ^bb12
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb9, ^bb13
  ^bb9:  // pred: ^bb8
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%119 : i64)
  ^bb10(%122: i64):  // 2 preds: ^bb9, ^bb11
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %124 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.add %107, %112  : i64
    %126 = llvm.add %125, %117  : i64
    %127 = llvm.add %126, %19  : i64
    %128 = llvm.getelementptr %124[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.load %128 : !llvm.ptr<i32>
    %130 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.getelementptr %130[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.mul %129, %132  : i32
    %134 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mul %107, %135  : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %112, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %117, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.add %142, %122  : i64
    %144 = llvm.getelementptr %134[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %133, %144 : !llvm.ptr<i32>
    %145 = llvm.add %122, %121  : i64
    llvm.br ^bb10(%145 : i64)
  ^bb12:  // pred: ^bb10
    %146 = llvm.add %117, %116  : i64
    llvm.br ^bb8(%146 : i64)
  ^bb13:  // pred: ^bb8
    %147 = llvm.add %112, %111  : i64
    llvm.br ^bb6(%147 : i64)
  ^bb14:  // pred: ^bb6
    %148 = llvm.add %107, %106  : i64
    llvm.br ^bb4(%148 : i64)
  ^bb15:  // pred: ^bb4
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(6 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(6 : index) : i64
    %155 = llvm.mlir.constant(6 : index) : i64
    %156 = llvm.mlir.constant(6 : index) : i64
    %157 = llvm.mlir.null : !llvm.ptr<i32>
    %158 = llvm.getelementptr %157[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i32> to i64
    %160 = llvm.mlir.constant(16 : index) : i64
    %161 = llvm.add %159, %160  : i64
    %162 = llvm.call @malloc(%161) : (i64) -> !llvm.ptr<i8>
    %163 = llvm.bitcast %162 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %164 = llvm.ptrtoint %163 : !llvm.ptr<i32> to i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.sub %160, %165  : i64
    %167 = llvm.add %164, %166  : i64
    %168 = llvm.urem %167, %160  : i64
    %169 = llvm.sub %167, %168  : i64
    %170 = llvm.inttoptr %169 : i64 to !llvm.ptr<i32>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %172 = llvm.insertvalue %163, %171[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %170, %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.insertvalue %174, %173[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %149, %175[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %150, %176[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %151, %177[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %152, %178[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %155, %179[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %154, %180[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %152, %181[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %153, %182[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%184 : i64)
  ^bb16(%187: i64):  // 2 preds: ^bb15, ^bb26
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%189 : i64)
  ^bb18(%192: i64):  // 2 preds: ^bb17, ^bb25
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%194 : i64)
  ^bb20(%197: i64):  // 2 preds: ^bb19, ^bb24
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%199 : i64)
  ^bb22(%202: i64):  // 2 preds: ^bb21, ^bb23
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %204 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %187, %205  : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mul %192, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mul %197, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.add %212, %202  : i64
    %214 = llvm.getelementptr %204[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.load %214 : !llvm.ptr<i32>
    %216 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(6 : index) : i64
    %218 = llvm.mul %187, %217  : i64
    %219 = llvm.mlir.constant(6 : index) : i64
    %220 = llvm.mul %192, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.mlir.constant(6 : index) : i64
    %223 = llvm.mul %197, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.add %224, %202  : i64
    %226 = llvm.getelementptr %216[%225] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %215, %226 : !llvm.ptr<i32>
    %227 = llvm.add %202, %201  : i64
    llvm.br ^bb22(%227 : i64)
  ^bb24:  // pred: ^bb22
    %228 = llvm.add %197, %196  : i64
    llvm.br ^bb20(%228 : i64)
  ^bb25:  // pred: ^bb20
    %229 = llvm.add %192, %191  : i64
    llvm.br ^bb18(%229 : i64)
  ^bb26:  // pred: ^bb18
    %230 = llvm.add %187, %186  : i64
    llvm.br ^bb16(%230 : i64)
  ^bb27:  // pred: ^bb16
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%231 : i64)
  ^bb28(%234: i64):  // 2 preds: ^bb27, ^bb38
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%236 : i64)
  ^bb30(%239: i64):  // 2 preds: ^bb29, ^bb37
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%241 : i64)
  ^bb32(%244: i64):  // 2 preds: ^bb31, ^bb36
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%246 : i64)
  ^bb34(%249: i64):  // 2 preds: ^bb33, ^bb35
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mul %234, %254  : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mul %239, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mul %244, %259  : i64
    %261 = llvm.add %258, %260  : i64
    %262 = llvm.add %261, %249  : i64
    %263 = llvm.getelementptr %253[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.load %263 : !llvm.ptr<i32>
    %265 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.mlir.constant(6 : index) : i64
    %267 = llvm.mul %234, %266  : i64
    %268 = llvm.mlir.constant(6 : index) : i64
    %269 = llvm.mul %239, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.mlir.constant(6 : index) : i64
    %272 = llvm.mul %244, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.add %273, %252  : i64
    %275 = llvm.getelementptr %265[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %264, %275 : !llvm.ptr<i32>
    %276 = llvm.add %249, %248  : i64
    llvm.br ^bb34(%276 : i64)
  ^bb36:  // pred: ^bb34
    %277 = llvm.add %244, %243  : i64
    llvm.br ^bb32(%277 : i64)
  ^bb37:  // pred: ^bb32
    %278 = llvm.add %239, %238  : i64
    llvm.br ^bb30(%278 : i64)
  ^bb38:  // pred: ^bb30
    %279 = llvm.add %234, %233  : i64
    llvm.br ^bb28(%279 : i64)
  ^bb39:  // pred: ^bb28
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%280 : i64)
  ^bb40(%283: i64):  // 2 preds: ^bb39, ^bb50
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%285 : i64)
  ^bb42(%288: i64):  // 2 preds: ^bb41, ^bb49
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%290 : i64)
  ^bb44(%293: i64):  // 2 preds: ^bb43, ^bb48
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%295 : i64)
  ^bb46(%298: i64):  // 2 preds: ^bb45, ^bb47
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %283, %303  : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mul %288, %305  : i64
    %307 = llvm.add %304, %306  : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mul %293, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.add %310, %298  : i64
    %312 = llvm.getelementptr %302[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %313 = llvm.load %312 : !llvm.ptr<i32>
    %314 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(6 : index) : i64
    %316 = llvm.mul %283, %315  : i64
    %317 = llvm.mlir.constant(6 : index) : i64
    %318 = llvm.mul %288, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.mlir.constant(6 : index) : i64
    %321 = llvm.mul %293, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.add %322, %301  : i64
    %324 = llvm.getelementptr %314[%323] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %313, %324 : !llvm.ptr<i32>
    %325 = llvm.add %298, %297  : i64
    llvm.br ^bb46(%325 : i64)
  ^bb48:  // pred: ^bb46
    %326 = llvm.add %293, %292  : i64
    llvm.br ^bb44(%326 : i64)
  ^bb49:  // pred: ^bb44
    %327 = llvm.add %288, %287  : i64
    llvm.br ^bb42(%327 : i64)
  ^bb50:  // pred: ^bb42
    %328 = llvm.add %283, %282  : i64
    llvm.br ^bb40(%328 : i64)
  ^bb51:  // pred: ^bb40
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(6 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(6 : index) : i64
    %335 = llvm.mlir.constant(6 : index) : i64
    %336 = llvm.mlir.constant(6 : index) : i64
    %337 = llvm.mlir.null : !llvm.ptr<i32>
    %338 = llvm.getelementptr %337[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i32> to i64
    %340 = llvm.mlir.constant(16 : index) : i64
    %341 = llvm.add %339, %340  : i64
    %342 = llvm.call @malloc(%341) : (i64) -> !llvm.ptr<i8>
    %343 = llvm.bitcast %342 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %344 = llvm.ptrtoint %343 : !llvm.ptr<i32> to i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.sub %340, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.urem %347, %340  : i64
    %349 = llvm.sub %347, %348  : i64
    %350 = llvm.inttoptr %349 : i64 to !llvm.ptr<i32>
    %351 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %352 = llvm.insertvalue %343, %351[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %350, %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.insertvalue %354, %353[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %332, %358[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %335, %359[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %332, %361[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %333, %362[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%364 : i64)
  ^bb52(%367: i64):  // 2 preds: ^bb51, ^bb62
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%369 : i64)
  ^bb54(%372: i64):  // 2 preds: ^bb53, ^bb61
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%374 : i64)
  ^bb56(%377: i64):  // 2 preds: ^bb55, ^bb60
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(6 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%379 : i64)
  ^bb58(%382: i64):  // 2 preds: ^bb57, ^bb59
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %384 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.mlir.constant(6 : index) : i64
    %386 = llvm.mul %367, %385  : i64
    %387 = llvm.mlir.constant(6 : index) : i64
    %388 = llvm.mul %372, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.mlir.constant(6 : index) : i64
    %391 = llvm.mul %377, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %382  : i64
    %394 = llvm.getelementptr %384[%393] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %395 = llvm.load %394 : !llvm.ptr<i32>
    %396 = llvm.mlir.constant(false) : i1
    %397 = "llvm.intr.abs"(%395, %396) : (i32, i1) -> i32
    %398 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(6 : index) : i64
    %400 = llvm.mul %367, %399  : i64
    %401 = llvm.mlir.constant(6 : index) : i64
    %402 = llvm.mul %372, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.mlir.constant(6 : index) : i64
    %405 = llvm.mul %377, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.add %406, %382  : i64
    %408 = llvm.getelementptr %398[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %397, %408 : !llvm.ptr<i32>
    %409 = llvm.add %382, %381  : i64
    llvm.br ^bb58(%409 : i64)
  ^bb60:  // pred: ^bb58
    %410 = llvm.add %377, %376  : i64
    llvm.br ^bb56(%410 : i64)
  ^bb61:  // pred: ^bb56
    %411 = llvm.add %372, %371  : i64
    llvm.br ^bb54(%411 : i64)
  ^bb62:  // pred: ^bb54
    %412 = llvm.add %367, %366  : i64
    llvm.br ^bb52(%412 : i64)
  ^bb63:  // pred: ^bb52
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.null : !llvm.ptr<i64>
    %422 = llvm.getelementptr %421[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %423 = llvm.ptrtoint %422 : !llvm.ptr<i64> to i64
    %424 = llvm.mlir.constant(16 : index) : i64
    %425 = llvm.add %423, %424  : i64
    %426 = llvm.call @malloc(%425) : (i64) -> !llvm.ptr<i8>
    %427 = llvm.bitcast %426 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %428 = llvm.ptrtoint %427 : !llvm.ptr<i64> to i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.sub %424, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.urem %431, %424  : i64
    %433 = llvm.sub %431, %432  : i64
    %434 = llvm.inttoptr %433 : i64 to !llvm.ptr<i64>
    %435 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %436 = llvm.insertvalue %427, %435[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %434, %436[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.insertvalue %438, %437[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %414, %440[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %415, %441[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %419, %443[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %418, %444[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %416, %445[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %417, %446[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%448 : i64)
  ^bb64(%451: i64):  // 2 preds: ^bb63, ^bb74
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%453 : i64)
  ^bb66(%456: i64):  // 2 preds: ^bb65, ^bb73
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%458 : i64)
  ^bb68(%461: i64):  // 2 preds: ^bb67, ^bb72
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(2 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%463 : i64)
  ^bb70(%466: i64):  // 2 preds: ^bb69, ^bb71
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %468 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mul %451, %469  : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %456, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %461, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.add %476, %466  : i64
    %478 = llvm.getelementptr %468[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %479 = llvm.load %478 : !llvm.ptr<i32>
    %480 = llvm.sext %479 : i32 to i64
    %481 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mul %451, %482  : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mul %456, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mul %461, %487  : i64
    %489 = llvm.add %486, %488  : i64
    %490 = llvm.add %489, %466  : i64
    %491 = llvm.getelementptr %481[%490] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %480, %491 : !llvm.ptr<i64>
    %492 = llvm.add %466, %465  : i64
    llvm.br ^bb70(%492 : i64)
  ^bb72:  // pred: ^bb70
    %493 = llvm.add %461, %460  : i64
    llvm.br ^bb68(%493 : i64)
  ^bb73:  // pred: ^bb68
    %494 = llvm.add %456, %455  : i64
    llvm.br ^bb66(%494 : i64)
  ^bb74:  // pred: ^bb66
    %495 = llvm.add %451, %450  : i64
    llvm.br ^bb64(%495 : i64)
  ^bb75:  // pred: ^bb64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(2 : index) : i64
    %501 = llvm.mlir.constant(2 : index) : i64
    %502 = llvm.mlir.null : !llvm.ptr<i64>
    %503 = llvm.getelementptr %502[%501] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %504 = llvm.ptrtoint %503 : !llvm.ptr<i64> to i64
    %505 = llvm.mlir.constant(16 : index) : i64
    %506 = llvm.add %504, %505  : i64
    %507 = llvm.call @malloc(%506) : (i64) -> !llvm.ptr<i8>
    %508 = llvm.bitcast %507 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %509 = llvm.ptrtoint %508 : !llvm.ptr<i64> to i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.sub %505, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.urem %512, %505  : i64
    %514 = llvm.sub %512, %513  : i64
    %515 = llvm.inttoptr %514 : i64 to !llvm.ptr<i64>
    %516 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %517 = llvm.insertvalue %508, %516[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %518 = llvm.insertvalue %515, %517[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.insertvalue %519, %518[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %521 = llvm.insertvalue %496, %520[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %522 = llvm.insertvalue %497, %521[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %523 = llvm.insertvalue %498, %522[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %524 = llvm.insertvalue %500, %523[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %525 = llvm.insertvalue %498, %524[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %526 = llvm.insertvalue %499, %525[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%527 : i64)
  ^bb76(%530: i64):  // 2 preds: ^bb75, ^bb83
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb77, ^bb84
  ^bb77:  // pred: ^bb76
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%532 : i64)
  ^bb78(%535: i64):  // 2 preds: ^bb77, ^bb82
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb79, ^bb83
  ^bb79:  // pred: ^bb78
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%537 : i64)
  ^bb80(%540: i64):  // 2 preds: ^bb79, ^bb81
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb81, ^bb82
  ^bb81:  // pred: ^bb80
    %542 = llvm.extractvalue %526[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %543 = llvm.mlir.constant(2 : index) : i64
    %544 = llvm.mul %530, %543  : i64
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mul %535, %545  : i64
    %547 = llvm.add %544, %546  : i64
    %548 = llvm.add %547, %540  : i64
    %549 = llvm.getelementptr %542[%548] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %18, %549 : !llvm.ptr<i64>
    %550 = llvm.add %540, %539  : i64
    llvm.br ^bb80(%550 : i64)
  ^bb82:  // pred: ^bb80
    %551 = llvm.add %535, %534  : i64
    llvm.br ^bb78(%551 : i64)
  ^bb83:  // pred: ^bb78
    %552 = llvm.add %530, %529  : i64
    llvm.br ^bb76(%552 : i64)
  ^bb84:  // pred: ^bb76
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%553 : i64)
  ^bb85(%556: i64):  // 2 preds: ^bb84, ^bb95
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%558 : i64)
  ^bb87(%561: i64):  // 2 preds: ^bb86, ^bb94
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%563 : i64)
  ^bb89(%566: i64):  // 2 preds: ^bb88, ^bb93
    %567 = llvm.icmp "slt" %566, %564 : i64
    llvm.cond_br %567, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%568 : i64)
  ^bb91(%571: i64):  // 2 preds: ^bb90, ^bb92
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %573 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.mlir.constant(2 : index) : i64
    %575 = llvm.mul %556, %574  : i64
    %576 = llvm.mlir.constant(2 : index) : i64
    %577 = llvm.mul %561, %576  : i64
    %578 = llvm.add %575, %577  : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mul %566, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.add %581, %571  : i64
    %583 = llvm.getelementptr %573[%582] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %584 = llvm.load %583 : !llvm.ptr<i64>
    %585 = llvm.extractvalue %526[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %586 = llvm.mlir.constant(2 : index) : i64
    %587 = llvm.mul %561, %586  : i64
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mul %566, %588  : i64
    %590 = llvm.add %587, %589  : i64
    %591 = llvm.add %590, %571  : i64
    %592 = llvm.getelementptr %585[%591] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %593 = llvm.load %592 : !llvm.ptr<i64>
    %594 = llvm.add %593, %584  : i64
    %595 = llvm.extractvalue %526[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %596 = llvm.mlir.constant(2 : index) : i64
    %597 = llvm.mul %561, %596  : i64
    %598 = llvm.mlir.constant(2 : index) : i64
    %599 = llvm.mul %566, %598  : i64
    %600 = llvm.add %597, %599  : i64
    %601 = llvm.add %600, %571  : i64
    %602 = llvm.getelementptr %595[%601] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %594, %602 : !llvm.ptr<i64>
    %603 = llvm.add %571, %570  : i64
    llvm.br ^bb91(%603 : i64)
  ^bb93:  // pred: ^bb91
    %604 = llvm.add %566, %565  : i64
    llvm.br ^bb89(%604 : i64)
  ^bb94:  // pred: ^bb89
    %605 = llvm.add %561, %560  : i64
    llvm.br ^bb87(%605 : i64)
  ^bb95:  // pred: ^bb87
    %606 = llvm.add %556, %555  : i64
    llvm.br ^bb85(%606 : i64)
  ^bb96:  // pred: ^bb85
    %607 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %608 = llvm.insertvalue %363, %607[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %609 = llvm.insertvalue %526, %608[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %609 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(4 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.extractvalue %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %79[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %80[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.getelementptr %70[%101] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %102 : !llvm.ptr<ptr<i8>>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.call @omTensorCreateUntyped(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %108 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%104, %105, %107, %109) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %110 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%104, %110) : (!llvm.ptr<i8>, i64) -> ()
    %111 = llvm.call @omTensorGetShape(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.call @omTensorGetStrides(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %113 = llvm.mlir.constant(0 : i64) : i64
    %114 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %111[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %112[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.getelementptr %111[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %112[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(2 : i64) : i64
    %124 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.getelementptr %111[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.getelementptr %112[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.mlir.constant(1 : i64) : i64
    %129 = llvm.getelementptr %70[%128] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %104, %129 : !llvm.ptr<ptr<i8>>
    %130 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %130 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<130 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<130 x i8>> to !llvm.ptr<i8>
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

