module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[3, 5]], [[6, 4]]], [[[4, 5]], [[7, 5]]]]> : tensor<2x2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.mlir.constant(-1 : i64) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(0 : i32) : i32
    %10 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>>
    %11 = llvm.bitcast %10 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %11, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.insertvalue %15, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.insertvalue %17, %16[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(4 : index) : i64
    %20 = llvm.insertvalue %19, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.null : !llvm.ptr<i32>
    %35 = llvm.getelementptr %34[%33] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i32> to i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.null : !llvm.ptr<i32>
    %46 = llvm.getelementptr %45[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.alloca %47 x i32 : (i64) -> !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%54 : i64)
  ^bb1(%57: i64):  // 2 preds: ^bb0, ^bb2
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %59 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %61 = llvm.load %60 : !llvm.ptr<i32>
    %62 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %64 = llvm.load %63 : !llvm.ptr<i32>
    %65 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %66 = llvm.load %65 : !llvm.ptr<i32>
    %67 = llvm.mul %61, %64  : i32
    %68 = llvm.add %66, %67  : i32
    %69 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %68, %69 : !llvm.ptr<i32>
    %70 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %9, %70 : !llvm.ptr<i32>
    %71 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %72 = llvm.load %71 : !llvm.ptr<i32>
    %73 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %72, %73 : !llvm.ptr<i32>
    %74 = llvm.add %57, %56  : i64
    llvm.br ^bb1(%74 : i64)
  ^bb3:  // pred: ^bb1
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mlir.constant(4 : index) : i64
    %82 = llvm.mlir.constant(8 : index) : i64
    %83 = llvm.mlir.null : !llvm.ptr<i32>
    %84 = llvm.getelementptr %83[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<i32> to i64
    %86 = llvm.mlir.constant(16 : index) : i64
    %87 = llvm.add %85, %86  : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr<i8>
    %89 = llvm.bitcast %88 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i32> to i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.sub %86, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.urem %93, %86  : i64
    %95 = llvm.sub %93, %94  : i64
    %96 = llvm.inttoptr %95 : i64 to !llvm.ptr<i32>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %98 = llvm.insertvalue %89, %97[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %77, %103[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %78, %104[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %81, %105[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %80, %106[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %78, %107[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %79, %108[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%110 : i64)
  ^bb4(%113: i64):  // 2 preds: ^bb3, ^bb14
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb5, ^bb15
  ^bb5:  // pred: ^bb4
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%115 : i64)
  ^bb6(%118: i64):  // 2 preds: ^bb5, ^bb13
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb7, ^bb14
  ^bb7:  // pred: ^bb6
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%120 : i64)
  ^bb8(%123: i64):  // 2 preds: ^bb7, ^bb12
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb9, ^bb13
  ^bb9:  // pred: ^bb8
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%125 : i64)
  ^bb10(%128: i64):  // 2 preds: ^bb9, ^bb11
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %130 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.getelementptr %130[%8] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(4 : index) : i64
    %135 = llvm.mul %113, %134  : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %118, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %123, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.add %141, %128  : i64
    %143 = llvm.getelementptr %133[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.mul %132, %144  : i32
    %146 = llvm.extractvalue %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mul %113, %147  : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mul %118, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mul %123, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.add %154, %128  : i64
    %156 = llvm.getelementptr %146[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %156 : !llvm.ptr<i32>
    %157 = llvm.add %128, %127  : i64
    llvm.br ^bb10(%157 : i64)
  ^bb12:  // pred: ^bb10
    %158 = llvm.add %123, %122  : i64
    llvm.br ^bb8(%158 : i64)
  ^bb13:  // pred: ^bb8
    %159 = llvm.add %118, %117  : i64
    llvm.br ^bb6(%159 : i64)
  ^bb14:  // pred: ^bb6
    %160 = llvm.add %113, %112  : i64
    llvm.br ^bb4(%160 : i64)
  ^bb15:  // pred: ^bb4
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(4 : index) : i64
    %168 = llvm.mlir.constant(8 : index) : i64
    %169 = llvm.mlir.null : !llvm.ptr<i32>
    %170 = llvm.getelementptr %169[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<i32> to i64
    %172 = llvm.mlir.constant(16 : index) : i64
    %173 = llvm.add %171, %172  : i64
    %174 = llvm.call @malloc(%173) : (i64) -> !llvm.ptr<i8>
    %175 = llvm.bitcast %174 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i32> to i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.sub %172, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.urem %179, %172  : i64
    %181 = llvm.sub %179, %180  : i64
    %182 = llvm.inttoptr %181 : i64 to !llvm.ptr<i32>
    %183 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %184 = llvm.insertvalue %175, %183[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %182, %184[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.insertvalue %186, %185[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %161, %187[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %162, %188[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %163, %189[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %164, %190[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %167, %191[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %164, %193[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %165, %194[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%196 : i64)
  ^bb16(%199: i64):  // 2 preds: ^bb15, ^bb26
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%201 : i64)
  ^bb18(%204: i64):  // 2 preds: ^bb17, ^bb25
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%206 : i64)
  ^bb20(%209: i64):  // 2 preds: ^bb19, ^bb24
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%211 : i64)
  ^bb22(%214: i64):  // 2 preds: ^bb21, ^bb23
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %216 = llvm.extractvalue %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(4 : index) : i64
    %218 = llvm.mul %199, %217  : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %204, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mul %209, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.add %224, %214  : i64
    %226 = llvm.getelementptr %216[%225] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %227 = llvm.load %226 : !llvm.ptr<i32>
    %228 = llvm.mlir.constant(false) : i1
    %229 = "llvm.intr.abs"(%227, %228) : (i32, i1) -> i32
    %230 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mul %199, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %204, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %209, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.add %238, %214  : i64
    %240 = llvm.getelementptr %230[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %229, %240 : !llvm.ptr<i32>
    %241 = llvm.add %214, %213  : i64
    llvm.br ^bb22(%241 : i64)
  ^bb24:  // pred: ^bb22
    %242 = llvm.add %209, %208  : i64
    llvm.br ^bb20(%242 : i64)
  ^bb25:  // pred: ^bb20
    %243 = llvm.add %204, %203  : i64
    llvm.br ^bb18(%243 : i64)
  ^bb26:  // pred: ^bb18
    %244 = llvm.add %199, %198  : i64
    llvm.br ^bb16(%244 : i64)
  ^bb27:  // pred: ^bb16
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mlir.constant(8 : index) : i64
    %253 = llvm.mlir.null : !llvm.ptr<i64>
    %254 = llvm.getelementptr %253[%252] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i64> to i64
    %256 = llvm.mlir.constant(16 : index) : i64
    %257 = llvm.add %255, %256  : i64
    %258 = llvm.call @malloc(%257) : (i64) -> !llvm.ptr<i8>
    %259 = llvm.bitcast %258 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i64> to i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.sub %256, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.urem %263, %256  : i64
    %265 = llvm.sub %263, %264  : i64
    %266 = llvm.inttoptr %265 : i64 to !llvm.ptr<i64>
    %267 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %268 = llvm.insertvalue %259, %267[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %266, %268[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.insertvalue %270, %269[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %246, %272[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %247, %273[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %248, %274[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %251, %275[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %248, %277[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %249, %278[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%280 : i64)
  ^bb28(%283: i64):  // 2 preds: ^bb27, ^bb38
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%285 : i64)
  ^bb30(%288: i64):  // 2 preds: ^bb29, ^bb37
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%290 : i64)
  ^bb32(%293: i64):  // 2 preds: ^bb31, ^bb36
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%295 : i64)
  ^bb34(%298: i64):  // 2 preds: ^bb33, ^bb35
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %300 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mul %283, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %288, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mul %293, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.add %308, %298  : i64
    %310 = llvm.getelementptr %300[%309] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %311 = llvm.load %310 : !llvm.ptr<i32>
    %312 = llvm.sext %311 : i32 to i64
    %313 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(4 : index) : i64
    %315 = llvm.mul %283, %314  : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mul %288, %316  : i64
    %318 = llvm.add %315, %317  : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mul %293, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.add %321, %298  : i64
    %323 = llvm.getelementptr %313[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %312, %323 : !llvm.ptr<i64>
    %324 = llvm.add %298, %297  : i64
    llvm.br ^bb34(%324 : i64)
  ^bb36:  // pred: ^bb34
    %325 = llvm.add %293, %292  : i64
    llvm.br ^bb32(%325 : i64)
  ^bb37:  // pred: ^bb32
    %326 = llvm.add %288, %287  : i64
    llvm.br ^bb30(%326 : i64)
  ^bb38:  // pred: ^bb30
    %327 = llvm.add %283, %282  : i64
    llvm.br ^bb28(%327 : i64)
  ^bb39:  // pred: ^bb28
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.null : !llvm.ptr<i64>
    %335 = llvm.getelementptr %334[%333] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %336 = llvm.ptrtoint %335 : !llvm.ptr<i64> to i64
    %337 = llvm.mlir.constant(16 : index) : i64
    %338 = llvm.add %336, %337  : i64
    %339 = llvm.call @malloc(%338) : (i64) -> !llvm.ptr<i8>
    %340 = llvm.bitcast %339 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i64> to i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.sub %337, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.urem %344, %337  : i64
    %346 = llvm.sub %344, %345  : i64
    %347 = llvm.inttoptr %346 : i64 to !llvm.ptr<i64>
    %348 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %349 = llvm.insertvalue %340, %348[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.insertvalue %347, %349[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.insertvalue %351, %350[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.insertvalue %328, %352[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.insertvalue %329, %353[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %355 = llvm.insertvalue %330, %354[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.insertvalue %332, %355[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.insertvalue %330, %356[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.insertvalue %331, %357[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%359 : i64)
  ^bb40(%362: i64):  // 2 preds: ^bb39, ^bb47
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%364 : i64)
  ^bb42(%367: i64):  // 2 preds: ^bb41, ^bb46
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%369 : i64)
  ^bb44(%372: i64):  // 2 preds: ^bb43, ^bb45
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %374 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mul %362, %375  : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mul %367, %377  : i64
    %379 = llvm.add %376, %378  : i64
    %380 = llvm.add %379, %372  : i64
    %381 = llvm.getelementptr %374[%380] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %7, %381 : !llvm.ptr<i64>
    %382 = llvm.add %372, %371  : i64
    llvm.br ^bb44(%382 : i64)
  ^bb46:  // pred: ^bb44
    %383 = llvm.add %367, %366  : i64
    llvm.br ^bb42(%383 : i64)
  ^bb47:  // pred: ^bb42
    %384 = llvm.add %362, %361  : i64
    llvm.br ^bb40(%384 : i64)
  ^bb48:  // pred: ^bb40
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%385 : i64)
  ^bb49(%388: i64):  // 2 preds: ^bb48, ^bb59
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%390 : i64)
  ^bb51(%393: i64):  // 2 preds: ^bb50, ^bb58
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%395 : i64)
  ^bb53(%398: i64):  // 2 preds: ^bb52, ^bb57
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%400 : i64)
  ^bb55(%403: i64):  // 2 preds: ^bb54, ^bb56
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %405 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mul %388, %406  : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mul %393, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mul %398, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.add %413, %403  : i64
    %415 = llvm.getelementptr %405[%414] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %416 = llvm.load %415 : !llvm.ptr<i32>
    %417 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mul %388, %418  : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mul %398, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.add %422, %403  : i64
    %424 = llvm.getelementptr %417[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %425 = llvm.load %424 : !llvm.ptr<i64>
    %426 = llvm.icmp "slt" %425, %6 : i64
    %427 = llvm.select %426, %6, %425 : i1, i64
    %428 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %388, %429  : i64
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mul %427, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mul %398, %434  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.add %436, %403  : i64
    %438 = llvm.getelementptr %428[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %439 = llvm.load %438 : !llvm.ptr<i32>
    %440 = llvm.icmp "slt" %416, %439 : i32
    %441 = llvm.select %440, %393, %427 : i1, i64
    %442 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mul %388, %443  : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mul %398, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.add %447, %403  : i64
    %449 = llvm.getelementptr %442[%448] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %441, %449 : !llvm.ptr<i64>
    %450 = llvm.add %403, %402  : i64
    llvm.br ^bb55(%450 : i64)
  ^bb57:  // pred: ^bb55
    %451 = llvm.add %398, %397  : i64
    llvm.br ^bb53(%451 : i64)
  ^bb58:  // pred: ^bb53
    %452 = llvm.add %393, %392  : i64
    llvm.br ^bb51(%452 : i64)
  ^bb59:  // pred: ^bb51
    %453 = llvm.add %388, %387  : i64
    llvm.br ^bb49(%453 : i64)
  ^bb60:  // pred: ^bb49
    %454 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %455 = llvm.insertvalue %43, %454[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %456 = llvm.insertvalue %279, %455[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %457 = llvm.insertvalue %358, %456[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %457 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %26 = llvm.extractvalue %23[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %27 = llvm.mlir.constant(3 : i64) : i64
    %28 = llvm.mlir.constant(24 : i64) : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %31 = llvm.mlir.constant(0 : i64) : i64
    %32 = llvm.call @omTensorCreateUntyped(%31) : (i64) -> !llvm.ptr<i8>
    %33 = llvm.mlir.constant(1 : i64) : i64
    %34 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.bitcast %34 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %36 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.bitcast %36 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%32, %33, %35, %37) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %38 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%32, %38) : (!llvm.ptr<i8>, i64) -> ()
    %39 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %41 = llvm.mlir.constant(0 : i64) : i64
    %42 = llvm.getelementptr %30[%41] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %32, %42 : !llvm.ptr<ptr<i8>>
    %43 = llvm.mlir.constant(4 : i64) : i64
    %44 = llvm.call @omTensorCreateUntyped(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.bitcast %46 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %48 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.bitcast %48 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%44, %45, %47, %49) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %50 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%44, %50) : (!llvm.ptr<i8>, i64) -> ()
    %51 = llvm.call @omTensorGetShape(%44) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %52 = llvm.call @omTensorGetStrides(%44) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.getelementptr %51[%53] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %54, %55 : !llvm.ptr<i64>
    %56 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.getelementptr %52[%53] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.getelementptr %51[%58] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %59, %60 : !llvm.ptr<i64>
    %61 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.getelementptr %52[%58] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %61, %62 : !llvm.ptr<i64>
    %63 = llvm.mlir.constant(2 : i64) : i64
    %64 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %51[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %52[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(3 : i64) : i64
    %69 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %51[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %52[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.getelementptr %30[%73] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %44, %74 : !llvm.ptr<ptr<i8>>
    %75 = llvm.mlir.constant(3 : i64) : i64
    %76 = llvm.call @omTensorCreateUntyped(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.bitcast %78 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %80 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.bitcast %80 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%76, %77, %79, %81) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %82 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%76, %82) : (!llvm.ptr<i8>, i64) -> ()
    %83 = llvm.call @omTensorGetShape(%76) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.call @omTensorGetStrides(%76) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %85 = llvm.mlir.constant(0 : i64) : i64
    %86 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.getelementptr %83[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.getelementptr %84[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(1 : i64) : i64
    %91 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %83[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %94 = llvm.getelementptr %84[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.mlir.constant(2 : i64) : i64
    %96 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %83[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.getelementptr %84[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(2 : i64) : i64
    %101 = llvm.getelementptr %30[%100] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %76, %101 : !llvm.ptr<ptr<i8>>
    %102 = llvm.call @omTensorListCreate(%30, %27, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %102 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<194 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<194 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

