module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2 , 3] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 3] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[7, 6, 6], [7, 6, 10]], [[6, 5, 10], [6, 5, 7]]], [[[4, 5, 10], [7, 5, 9]], [[6, 4, 6], [4, 6, 7]]]]> : tensor<2x2x2x3xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<3 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(2147483647 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<2 x array<3 x i32>>>>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<2 x array<2 x array<2 x array<3 x i32>>>>> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(12 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(6 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(3 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(3 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(3 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(6 : index) : i64
    %46 = llvm.mlir.constant(12 : index) : i64
    %47 = llvm.mlir.constant(24 : index) : i64
    %48 = llvm.mlir.constant(48 : index) : i64
    %49 = llvm.mlir.null : !llvm.ptr<i32>
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i32> to i64
    %52 = llvm.mlir.constant(16 : index) : i64
    %53 = llvm.add %51, %52  : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i32> to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %52, %57  : i64
    %59 = llvm.add %56, %58  : i64
    %60 = llvm.urem %59, %52  : i64
    %61 = llvm.sub %59, %60  : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.insertvalue %39, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.insertvalue %40, %68[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.insertvalue %41, %69[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.insertvalue %42, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %43, %71[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.insertvalue %47, %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.insertvalue %46, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.insertvalue %45, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.insertvalue %43, %75[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.insertvalue %44, %76[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%78 : i64)
  ^bb1(%81: i64):  // 2 preds: ^bb0, ^bb14
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%83 : i64)
  ^bb3(%86: i64):  // 2 preds: ^bb2, ^bb13
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%88 : i64)
  ^bb5(%91: i64):  // 2 preds: ^bb4, ^bb12
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%93 : i64)
  ^bb7(%96: i64):  // 2 preds: ^bb6, ^bb11
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(3 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%98 : i64)
  ^bb9(%101: i64):  // 2 preds: ^bb8, ^bb10
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %103 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.mlir.constant(6 : index) : i64
    %105 = llvm.mul %81, %104  : i64
    %106 = llvm.mlir.constant(6 : index) : i64
    %107 = llvm.mul %15, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.mlir.constant(6 : index) : i64
    %110 = llvm.mul %15, %109  : i64
    %111 = llvm.add %108, %110  : i64
    %112 = llvm.mlir.constant(3 : index) : i64
    %113 = llvm.mul %96, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.add %114, %101  : i64
    %116 = llvm.getelementptr %103[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(12 : index) : i64
    %120 = llvm.mul %86, %119  : i64
    %121 = llvm.mlir.constant(6 : index) : i64
    %122 = llvm.mul %91, %121  : i64
    %123 = llvm.add %120, %122  : i64
    %124 = llvm.mlir.constant(3 : index) : i64
    %125 = llvm.mul %96, %124  : i64
    %126 = llvm.add %123, %125  : i64
    %127 = llvm.add %126, %101  : i64
    %128 = llvm.getelementptr %118[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.load %128 : !llvm.ptr<i32>
    %130 = llvm.mul %117, %129  : i32
    %131 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %132 = llvm.mlir.constant(24 : index) : i64
    %133 = llvm.mul %81, %132  : i64
    %134 = llvm.mlir.constant(12 : index) : i64
    %135 = llvm.mul %86, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.mlir.constant(6 : index) : i64
    %138 = llvm.mul %91, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.mlir.constant(3 : index) : i64
    %141 = llvm.mul %96, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.add %142, %101  : i64
    %144 = llvm.getelementptr %131[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %130, %144 : !llvm.ptr<i32>
    %145 = llvm.add %101, %100  : i64
    llvm.br ^bb9(%145 : i64)
  ^bb11:  // pred: ^bb9
    %146 = llvm.add %96, %95  : i64
    llvm.br ^bb7(%146 : i64)
  ^bb12:  // pred: ^bb7
    %147 = llvm.add %91, %90  : i64
    llvm.br ^bb5(%147 : i64)
  ^bb13:  // pred: ^bb5
    %148 = llvm.add %86, %85  : i64
    llvm.br ^bb3(%148 : i64)
  ^bb14:  // pred: ^bb3
    %149 = llvm.add %81, %80  : i64
    llvm.br ^bb1(%149 : i64)
  ^bb15:  // pred: ^bb1
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(3 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(6 : index) : i64
    %156 = llvm.mlir.constant(12 : index) : i64
    %157 = llvm.mlir.constant(24 : index) : i64
    %158 = llvm.mlir.null : !llvm.ptr<i32>
    %159 = llvm.getelementptr %158[%157] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i32> to i64
    %161 = llvm.mlir.constant(16 : index) : i64
    %162 = llvm.add %160, %161  : i64
    %163 = llvm.call @malloc(%162) : (i64) -> !llvm.ptr<i8>
    %164 = llvm.bitcast %163 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %165 = llvm.ptrtoint %164 : !llvm.ptr<i32> to i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.sub %161, %166  : i64
    %168 = llvm.add %165, %167  : i64
    %169 = llvm.urem %168, %161  : i64
    %170 = llvm.sub %168, %169  : i64
    %171 = llvm.inttoptr %170 : i64 to !llvm.ptr<i32>
    %172 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %173 = llvm.insertvalue %164, %172[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %171, %173[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.insertvalue %175, %174[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %150, %176[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %151, %177[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %152, %178[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %153, %179[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %156, %180[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %155, %181[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %153, %182[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.insertvalue %154, %183[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%185 : i64)
  ^bb16(%188: i64):  // 2 preds: ^bb15, ^bb26
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%190 : i64)
  ^bb18(%193: i64):  // 2 preds: ^bb17, ^bb25
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%195 : i64)
  ^bb20(%198: i64):  // 2 preds: ^bb19, ^bb24
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(3 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%200 : i64)
  ^bb22(%203: i64):  // 2 preds: ^bb21, ^bb23
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %205 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.mlir.constant(12 : index) : i64
    %207 = llvm.mul %188, %206  : i64
    %208 = llvm.mlir.constant(6 : index) : i64
    %209 = llvm.mul %193, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.mlir.constant(3 : index) : i64
    %212 = llvm.mul %198, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.add %213, %203  : i64
    %215 = llvm.getelementptr %205[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %215 : !llvm.ptr<i32>
    %216 = llvm.add %203, %202  : i64
    llvm.br ^bb22(%216 : i64)
  ^bb24:  // pred: ^bb22
    %217 = llvm.add %198, %197  : i64
    llvm.br ^bb20(%217 : i64)
  ^bb25:  // pred: ^bb20
    %218 = llvm.add %193, %192  : i64
    llvm.br ^bb18(%218 : i64)
  ^bb26:  // pred: ^bb18
    %219 = llvm.add %188, %187  : i64
    llvm.br ^bb16(%219 : i64)
  ^bb27:  // pred: ^bb16
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%220 : i64)
  ^bb28(%223: i64):  // 2 preds: ^bb27, ^bb41
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%225 : i64)
  ^bb30(%228: i64):  // 2 preds: ^bb29, ^bb40
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%230 : i64)
  ^bb32(%233: i64):  // 2 preds: ^bb31, ^bb39
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%235 : i64)
  ^bb34(%238: i64):  // 2 preds: ^bb33, ^bb38
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(3 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%240 : i64)
  ^bb36(%243: i64):  // 2 preds: ^bb35, ^bb37
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %245 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %246 = llvm.mlir.constant(24 : index) : i64
    %247 = llvm.mul %223, %246  : i64
    %248 = llvm.mlir.constant(12 : index) : i64
    %249 = llvm.mul %228, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.mlir.constant(6 : index) : i64
    %252 = llvm.mul %233, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.mlir.constant(3 : index) : i64
    %255 = llvm.mul %238, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.add %256, %243  : i64
    %258 = llvm.getelementptr %245[%257] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %259 = llvm.load %258 : !llvm.ptr<i32>
    %260 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(12 : index) : i64
    %262 = llvm.mul %223, %261  : i64
    %263 = llvm.mlir.constant(6 : index) : i64
    %264 = llvm.mul %233, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.mlir.constant(3 : index) : i64
    %267 = llvm.mul %238, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.add %268, %243  : i64
    %270 = llvm.getelementptr %260[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %271 = llvm.load %270 : !llvm.ptr<i32>
    %272 = llvm.icmp "slt" %271, %259 : i32
    %273 = llvm.select %272, %271, %259 : i1, i32
    %274 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(12 : index) : i64
    %276 = llvm.mul %223, %275  : i64
    %277 = llvm.mlir.constant(6 : index) : i64
    %278 = llvm.mul %233, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.mlir.constant(3 : index) : i64
    %281 = llvm.mul %238, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %243  : i64
    %284 = llvm.getelementptr %274[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %273, %284 : !llvm.ptr<i32>
    %285 = llvm.add %243, %242  : i64
    llvm.br ^bb36(%285 : i64)
  ^bb38:  // pred: ^bb36
    %286 = llvm.add %238, %237  : i64
    llvm.br ^bb34(%286 : i64)
  ^bb39:  // pred: ^bb34
    %287 = llvm.add %233, %232  : i64
    llvm.br ^bb32(%287 : i64)
  ^bb40:  // pred: ^bb32
    %288 = llvm.add %228, %227  : i64
    llvm.br ^bb30(%288 : i64)
  ^bb41:  // pred: ^bb30
    %289 = llvm.add %223, %222  : i64
    llvm.br ^bb28(%289 : i64)
  ^bb42:  // pred: ^bb28
    llvm.return %184 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.mlir.constant(8 : i64) : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(4 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(3 : i64) : i64
    %82 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %64[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %51[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %65[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.getelementptr %55[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.call @omTensorListCreate(%55, %52, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %88 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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

