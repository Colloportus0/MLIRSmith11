module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[[4], [6]], [[4], [5]]]], [[[[6], [6]], [[7], [4]]]]]> : tensor<2x1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<2 x array<1 x i32>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i1>, %arg6: !llvm.ptr<i1>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v1_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(2147483647 : i32) : i32
    %20 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x array<1 x i32>>>>>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %29 = llvm.mlir.constant(4 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.null : !llvm.ptr<i32>
    %49 = llvm.getelementptr %48[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<i32> to i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %58 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %19, %58 : !llvm.ptr<i32>
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%59 : i64)
  ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb2
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %64 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %66 = llvm.load %65 : !llvm.ptr<i32>
    %67 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %68 = llvm.load %67 : !llvm.ptr<i32>
    %69 = llvm.icmp "slt" %68, %66 : i32
    %70 = llvm.select %69, %68, %66 : i1, i32
    %71 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %70, %71 : !llvm.ptr<i32>
    %72 = llvm.add %62, %61  : i64
    llvm.br ^bb1(%72 : i64)
  ^bb3:  // pred: ^bb1
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.mlir.constant(8 : index) : i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.mlir.null : !llvm.ptr<i32>
    %83 = llvm.getelementptr %82[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %84 = llvm.ptrtoint %83 : !llvm.ptr<i32> to i64
    %85 = llvm.mlir.constant(16 : index) : i64
    %86 = llvm.add %84, %85  : i64
    %87 = llvm.call @malloc(%86) : (i64) -> !llvm.ptr<i8>
    %88 = llvm.bitcast %87 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<i32> to i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.sub %85, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.urem %92, %85  : i64
    %94 = llvm.sub %92, %93  : i64
    %95 = llvm.inttoptr %94 : i64 to !llvm.ptr<i32>
    %96 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %97 = llvm.insertvalue %88, %96[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.insertvalue %95, %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.insertvalue %99, %98[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %101 = llvm.insertvalue %73, %100[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.insertvalue %74, %101[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.insertvalue %75, %102[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.insertvalue %76, %103[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.insertvalue %77, %104[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.insertvalue %80, %105[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %107 = llvm.insertvalue %79, %106[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.insertvalue %76, %107[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %109 = llvm.insertvalue %77, %108[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.insertvalue %78, %109[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%111 : i64)
  ^bb4(%114: i64):  // 2 preds: ^bb3, ^bb17
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb5, ^bb18
  ^bb5:  // pred: ^bb4
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%116 : i64)
  ^bb6(%119: i64):  // 2 preds: ^bb5, ^bb16
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb7, ^bb17
  ^bb7:  // pred: ^bb6
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%121 : i64)
  ^bb8(%124: i64):  // 2 preds: ^bb7, ^bb15
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb9, ^bb16
  ^bb9:  // pred: ^bb8
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%126 : i64)
  ^bb10(%129: i64):  // 2 preds: ^bb9, ^bb14
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb11, ^bb15
  ^bb11:  // pred: ^bb10
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%131 : i64)
  ^bb12(%134: i64):  // 2 preds: ^bb11, ^bb13
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %136 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mul %119, %137  : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %124, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.add %141, %129  : i64
    %143 = llvm.add %142, %134  : i64
    %144 = llvm.getelementptr %136[%143] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %145 = llvm.load %144 : !llvm.ptr<i1>
    %146 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %147 = llvm.load %146 : !llvm.ptr<i32>
    %148 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mul %114, %149  : i64
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mul %18, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mul %124, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.add %156, %129  : i64
    %158 = llvm.add %157, %134  : i64
    %159 = llvm.getelementptr %148[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %160 = llvm.load %159 : !llvm.ptr<i32>
    %161 = llvm.select %145, %147, %160 : i1, i32
    %162 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %163 = llvm.mlir.constant(8 : index) : i64
    %164 = llvm.mul %114, %163  : i64
    %165 = llvm.mlir.constant(4 : index) : i64
    %166 = llvm.mul %119, %165  : i64
    %167 = llvm.add %164, %166  : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mul %124, %168  : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.add %170, %129  : i64
    %172 = llvm.add %171, %134  : i64
    %173 = llvm.getelementptr %162[%172] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %161, %173 : !llvm.ptr<i32>
    %174 = llvm.add %134, %133  : i64
    llvm.br ^bb12(%174 : i64)
  ^bb14:  // pred: ^bb12
    %175 = llvm.add %129, %128  : i64
    llvm.br ^bb10(%175 : i64)
  ^bb15:  // pred: ^bb10
    %176 = llvm.add %124, %123  : i64
    llvm.br ^bb8(%176 : i64)
  ^bb16:  // pred: ^bb8
    %177 = llvm.add %119, %118  : i64
    llvm.br ^bb6(%177 : i64)
  ^bb17:  // pred: ^bb6
    %178 = llvm.add %114, %113  : i64
    llvm.br ^bb4(%178 : i64)
  ^bb18:  // pred: ^bb4
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mlir.constant(8 : index) : i64
    %187 = llvm.mlir.constant(16 : index) : i64
    %188 = llvm.mlir.null : !llvm.ptr<i32>
    %189 = llvm.getelementptr %188[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i32> to i64
    %191 = llvm.mlir.constant(16 : index) : i64
    %192 = llvm.add %190, %191  : i64
    %193 = llvm.call @malloc(%192) : (i64) -> !llvm.ptr<i8>
    %194 = llvm.bitcast %193 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i32> to i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.sub %191, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.urem %198, %191  : i64
    %200 = llvm.sub %198, %199  : i64
    %201 = llvm.inttoptr %200 : i64 to !llvm.ptr<i32>
    %202 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %203 = llvm.insertvalue %194, %202[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %204 = llvm.insertvalue %201, %203[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.insertvalue %205, %204[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %207 = llvm.insertvalue %179, %206[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %208 = llvm.insertvalue %180, %207[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %209 = llvm.insertvalue %181, %208[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %210 = llvm.insertvalue %182, %209[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %211 = llvm.insertvalue %183, %210[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %212 = llvm.insertvalue %186, %211[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %213 = llvm.insertvalue %185, %212[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %214 = llvm.insertvalue %182, %213[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %215 = llvm.insertvalue %183, %214[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %216 = llvm.insertvalue %184, %215[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%217 : i64)
  ^bb19(%220: i64):  // 2 preds: ^bb18, ^bb32
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb20, ^bb33
  ^bb20:  // pred: ^bb19
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%222 : i64)
  ^bb21(%225: i64):  // 2 preds: ^bb20, ^bb31
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb22, ^bb32
  ^bb22:  // pred: ^bb21
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%227 : i64)
  ^bb23(%230: i64):  // 2 preds: ^bb22, ^bb30
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb24, ^bb31
  ^bb24:  // pred: ^bb23
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%232 : i64)
  ^bb25(%235: i64):  // 2 preds: ^bb24, ^bb29
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%237 : i64)
  ^bb27(%240: i64):  // 2 preds: ^bb26, ^bb28
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %242 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %243 = llvm.mlir.constant(8 : index) : i64
    %244 = llvm.mul %220, %243  : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mul %225, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mul %230, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.add %250, %235  : i64
    %252 = llvm.add %251, %240  : i64
    %253 = llvm.getelementptr %242[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.mlir.constant(false) : i1
    %256 = "llvm.intr.abs"(%254, %255) : (i32, i1) -> i32
    %257 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %258 = llvm.mlir.constant(8 : index) : i64
    %259 = llvm.mul %220, %258  : i64
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mul %225, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %230, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.add %265, %235  : i64
    %267 = llvm.add %266, %240  : i64
    %268 = llvm.getelementptr %257[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %256, %268 : !llvm.ptr<i32>
    %269 = llvm.add %240, %239  : i64
    llvm.br ^bb27(%269 : i64)
  ^bb29:  // pred: ^bb27
    %270 = llvm.add %235, %234  : i64
    llvm.br ^bb25(%270 : i64)
  ^bb30:  // pred: ^bb25
    %271 = llvm.add %230, %229  : i64
    llvm.br ^bb23(%271 : i64)
  ^bb31:  // pred: ^bb23
    %272 = llvm.add %225, %224  : i64
    llvm.br ^bb21(%272 : i64)
  ^bb32:  // pred: ^bb21
    %273 = llvm.add %220, %219  : i64
    llvm.br ^bb19(%273 : i64)
  ^bb33:  // pred: ^bb19
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mlir.constant(8 : index) : i64
    %281 = llvm.mlir.null : !llvm.ptr<i32>
    %282 = llvm.getelementptr %281[%280] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i32> to i64
    %284 = llvm.mlir.constant(16 : index) : i64
    %285 = llvm.add %283, %284  : i64
    %286 = llvm.call @malloc(%285) : (i64) -> !llvm.ptr<i8>
    %287 = llvm.bitcast %286 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i32> to i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.sub %284, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.urem %291, %284  : i64
    %293 = llvm.sub %291, %292  : i64
    %294 = llvm.inttoptr %293 : i64 to !llvm.ptr<i32>
    %295 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %296 = llvm.insertvalue %287, %295[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %294, %296[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.insertvalue %298, %297[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %274, %299[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %275, %300[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %276, %301[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %277, %302[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %279, %303[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %276, %304[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %277, %305[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %278, %306[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%308 : i64)
  ^bb34(%311: i64):  // 2 preds: ^bb33, ^bb44
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%313 : i64)
  ^bb36(%316: i64):  // 2 preds: ^bb35, ^bb43
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%318 : i64)
  ^bb38(%321: i64):  // 2 preds: ^bb37, ^bb42
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%323 : i64)
  ^bb40(%326: i64):  // 2 preds: ^bb39, ^bb41
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %328 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mul %311, %329  : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mul %316, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.add %333, %321  : i64
    %335 = llvm.add %334, %326  : i64
    %336 = llvm.getelementptr %328[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %19, %336 : !llvm.ptr<i32>
    %337 = llvm.add %326, %325  : i64
    llvm.br ^bb40(%337 : i64)
  ^bb42:  // pred: ^bb40
    %338 = llvm.add %321, %320  : i64
    llvm.br ^bb38(%338 : i64)
  ^bb43:  // pred: ^bb38
    %339 = llvm.add %316, %315  : i64
    llvm.br ^bb36(%339 : i64)
  ^bb44:  // pred: ^bb36
    %340 = llvm.add %311, %310  : i64
    llvm.br ^bb34(%340 : i64)
  ^bb45:  // pred: ^bb34
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%341 : i64)
  ^bb46(%344: i64):  // 2 preds: ^bb45, ^bb59
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb47, ^bb60
  ^bb47:  // pred: ^bb46
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%346 : i64)
  ^bb48(%349: i64):  // 2 preds: ^bb47, ^bb58
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb49, ^bb59
  ^bb49:  // pred: ^bb48
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%351 : i64)
  ^bb50(%354: i64):  // 2 preds: ^bb49, ^bb57
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb51, ^bb58
  ^bb51:  // pred: ^bb50
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%356 : i64)
  ^bb52(%359: i64):  // 2 preds: ^bb51, ^bb56
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb53, ^bb57
  ^bb53:  // pred: ^bb52
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%361 : i64)
  ^bb54(%364: i64):  // 2 preds: ^bb53, ^bb55
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb55, ^bb56
  ^bb55:  // pred: ^bb54
    %366 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %367 = llvm.mlir.constant(8 : index) : i64
    %368 = llvm.mul %344, %367  : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mul %349, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %354, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.add %374, %359  : i64
    %376 = llvm.add %375, %364  : i64
    %377 = llvm.getelementptr %366[%376] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %378 = llvm.load %377 : !llvm.ptr<i32>
    %379 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mul %344, %380  : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %354, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.add %384, %359  : i64
    %386 = llvm.add %385, %364  : i64
    %387 = llvm.getelementptr %379[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %388 = llvm.load %387 : !llvm.ptr<i32>
    %389 = llvm.icmp "slt" %388, %378 : i32
    %390 = llvm.select %389, %388, %378 : i1, i32
    %391 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mul %344, %392  : i64
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mul %354, %394  : i64
    %396 = llvm.add %393, %395  : i64
    %397 = llvm.add %396, %359  : i64
    %398 = llvm.add %397, %364  : i64
    %399 = llvm.getelementptr %391[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %390, %399 : !llvm.ptr<i32>
    %400 = llvm.add %364, %363  : i64
    llvm.br ^bb54(%400 : i64)
  ^bb56:  // pred: ^bb54
    %401 = llvm.add %359, %358  : i64
    llvm.br ^bb52(%401 : i64)
  ^bb57:  // pred: ^bb52
    %402 = llvm.add %354, %353  : i64
    llvm.br ^bb50(%402 : i64)
  ^bb58:  // pred: ^bb50
    %403 = llvm.add %349, %348  : i64
    llvm.br ^bb48(%403 : i64)
  ^bb59:  // pred: ^bb48
    %404 = llvm.add %344, %343  : i64
    llvm.br ^bb46(%404 : i64)
  ^bb60:  // pred: ^bb46
    llvm.return %307 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %65 = llvm.mlir.constant(1 : i64) : i64
    %66 = llvm.mlir.constant(8 : i64) : i64
    %67 = llvm.call @malloc(%66) : (i64) -> !llvm.ptr<i8>
    %68 = llvm.bitcast %67 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %69 = llvm.mlir.constant(4 : i64) : i64
    %70 = llvm.call @omTensorCreateUntyped(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.bitcast %72 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %74 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%70, %71, %73, %75) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %76 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%70, %76) : (!llvm.ptr<i8>, i64) -> ()
    %77 = llvm.call @omTensorGetShape(%70) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %78 = llvm.call @omTensorGetStrides(%70) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.extractvalue %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %77[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %64[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %78[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(1 : i64) : i64
    %85 = llvm.extractvalue %64[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %77[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %64[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %78[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(2 : i64) : i64
    %90 = llvm.extractvalue %64[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %77[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %64[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %78[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(3 : i64) : i64
    %95 = llvm.extractvalue %64[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %77[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %78[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(0 : i64) : i64
    %100 = llvm.getelementptr %68[%99] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %70, %100 : !llvm.ptr<ptr<i8>>
    %101 = llvm.call @omTensorListCreate(%68, %65, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %101 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
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

