module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<3> : tensor<1x1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<1x1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x array<1 x i32>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v6_0"]} {
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
    %12 = llvm.mlir.constant(2147483647 : i32) : i32
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<1 x i32>>>>>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.null : !llvm.ptr<i32>
    %73 = llvm.getelementptr %72[%67] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %74 = llvm.ptrtoint %73 : !llvm.ptr<i32> to i64
    %75 = llvm.mlir.constant(16 : index) : i64
    %76 = llvm.add %74, %75  : i64
    %77 = llvm.call @malloc(%76) : (i64) -> !llvm.ptr<i8>
    %78 = llvm.bitcast %77 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %79 = llvm.ptrtoint %78 : !llvm.ptr<i32> to i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.sub %75, %80  : i64
    %82 = llvm.add %79, %81  : i64
    %83 = llvm.urem %82, %75  : i64
    %84 = llvm.sub %82, %83  : i64
    %85 = llvm.inttoptr %84 : i64 to !llvm.ptr<i32>
    %86 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %87 = llvm.insertvalue %78, %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %67, %90[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %68, %91[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %69, %92[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %70, %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %68, %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %69, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %70, %96[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%99 : i64)
  ^bb1(%102: i64):  // 2 preds: ^bb0, ^bb11
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%104 : i64)
  ^bb3(%107: i64):  // 2 preds: ^bb2, ^bb10
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%109 : i64)
  ^bb5(%112: i64):  // 2 preds: ^bb4, ^bb9
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%114 : i64)
  ^bb7(%117: i64):  // 2 preds: ^bb6, ^bb8
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %119 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.add %102, %107  : i64
    %121 = llvm.add %120, %112  : i64
    %122 = llvm.add %121, %117  : i64
    %123 = llvm.getelementptr %119[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %123 : !llvm.ptr<i32>
    %124 = llvm.add %117, %116  : i64
    llvm.br ^bb7(%124 : i64)
  ^bb9:  // pred: ^bb7
    %125 = llvm.add %112, %111  : i64
    llvm.br ^bb5(%125 : i64)
  ^bb10:  // pred: ^bb5
    %126 = llvm.add %107, %106  : i64
    llvm.br ^bb3(%126 : i64)
  ^bb11:  // pred: ^bb3
    %127 = llvm.add %102, %101  : i64
    llvm.br ^bb1(%127 : i64)
  ^bb12:  // pred: ^bb1
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%128 : i64)
  ^bb13(%131: i64):  // 2 preds: ^bb12, ^bb26
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%133 : i64)
  ^bb15(%136: i64):  // 2 preds: ^bb14, ^bb25
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%138 : i64)
  ^bb17(%141: i64):  // 2 preds: ^bb16, ^bb24
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%143 : i64)
  ^bb19(%146: i64):  // 2 preds: ^bb18, ^bb23
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%148 : i64)
  ^bb21(%151: i64):  // 2 preds: ^bb20, ^bb22
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %153 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %154 = llvm.add %131, %136  : i64
    %155 = llvm.add %154, %141  : i64
    %156 = llvm.add %155, %146  : i64
    %157 = llvm.add %156, %151  : i64
    %158 = llvm.getelementptr %153[%157] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %159 = llvm.load %158 : !llvm.ptr<i32>
    %160 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.add %131, %141  : i64
    %162 = llvm.add %161, %146  : i64
    %163 = llvm.add %162, %151  : i64
    %164 = llvm.getelementptr %160[%163] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %165 = llvm.load %164 : !llvm.ptr<i32>
    %166 = llvm.icmp "slt" %165, %159 : i32
    %167 = llvm.select %166, %165, %159 : i1, i32
    %168 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.add %131, %141  : i64
    %170 = llvm.add %169, %146  : i64
    %171 = llvm.add %170, %151  : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %167, %172 : !llvm.ptr<i32>
    %173 = llvm.add %151, %150  : i64
    llvm.br ^bb21(%173 : i64)
  ^bb23:  // pred: ^bb21
    %174 = llvm.add %146, %145  : i64
    llvm.br ^bb19(%174 : i64)
  ^bb24:  // pred: ^bb19
    %175 = llvm.add %141, %140  : i64
    llvm.br ^bb17(%175 : i64)
  ^bb25:  // pred: ^bb17
    %176 = llvm.add %136, %135  : i64
    llvm.br ^bb15(%176 : i64)
  ^bb26:  // pred: ^bb15
    %177 = llvm.add %131, %130  : i64
    llvm.br ^bb13(%177 : i64)
  ^bb27:  // pred: ^bb13
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.null : !llvm.ptr<i32>
    %187 = llvm.getelementptr %186[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.ptrtoint %187 : !llvm.ptr<i32> to i64
    %189 = llvm.mlir.constant(16 : index) : i64
    %190 = llvm.add %188, %189  : i64
    %191 = llvm.call @malloc(%190) : (i64) -> !llvm.ptr<i8>
    %192 = llvm.bitcast %191 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %193 = llvm.ptrtoint %192 : !llvm.ptr<i32> to i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.sub %189, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.urem %196, %189  : i64
    %198 = llvm.sub %196, %197  : i64
    %199 = llvm.inttoptr %198 : i64 to !llvm.ptr<i32>
    %200 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %201 = llvm.insertvalue %192, %200[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %199, %201[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.insertvalue %203, %202[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %178, %204[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %179, %205[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %180, %206[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %181, %207[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %184, %208[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %183, %209[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %181, %210[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %182, %211[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%213 : i64)
  ^bb28(%216: i64):  // 2 preds: ^bb27, ^bb38
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%218 : i64)
  ^bb30(%221: i64):  // 2 preds: ^bb29, ^bb37
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%223 : i64)
  ^bb32(%226: i64):  // 2 preds: ^bb31, ^bb36
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%228 : i64)
  ^bb34(%231: i64):  // 2 preds: ^bb33, ^bb35
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %233 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.add %216, %221  : i64
    %235 = llvm.add %234, %226  : i64
    %236 = llvm.add %235, %231  : i64
    %237 = llvm.getelementptr %233[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mul %216, %240  : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %221, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %226, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %231  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %238, %249 : !llvm.ptr<i32>
    %250 = llvm.add %231, %230  : i64
    llvm.br ^bb34(%250 : i64)
  ^bb36:  // pred: ^bb34
    %251 = llvm.add %226, %225  : i64
    llvm.br ^bb32(%251 : i64)
  ^bb37:  // pred: ^bb32
    %252 = llvm.add %221, %220  : i64
    llvm.br ^bb30(%252 : i64)
  ^bb38:  // pred: ^bb30
    %253 = llvm.add %216, %215  : i64
    llvm.br ^bb28(%253 : i64)
  ^bb39:  // pred: ^bb28
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%254 : i64)
  ^bb40(%257: i64):  // 2 preds: ^bb39, ^bb50
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%259 : i64)
  ^bb42(%262: i64):  // 2 preds: ^bb41, ^bb49
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%264 : i64)
  ^bb44(%267: i64):  // 2 preds: ^bb43, ^bb48
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%269 : i64)
  ^bb46(%272: i64):  // 2 preds: ^bb45, ^bb47
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.add %257, %262  : i64
    %278 = llvm.add %277, %267  : i64
    %279 = llvm.add %278, %272  : i64
    %280 = llvm.getelementptr %276[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %281 = llvm.load %280 : !llvm.ptr<i32>
    %282 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mul %257, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %262, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mul %267, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.add %290, %275  : i64
    %292 = llvm.getelementptr %282[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %281, %292 : !llvm.ptr<i32>
    %293 = llvm.add %272, %271  : i64
    llvm.br ^bb46(%293 : i64)
  ^bb48:  // pred: ^bb46
    %294 = llvm.add %267, %266  : i64
    llvm.br ^bb44(%294 : i64)
  ^bb49:  // pred: ^bb44
    %295 = llvm.add %262, %261  : i64
    llvm.br ^bb42(%295 : i64)
  ^bb50:  // pred: ^bb42
    %296 = llvm.add %257, %256  : i64
    llvm.br ^bb40(%296 : i64)
  ^bb51:  // pred: ^bb40
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mlir.null : !llvm.ptr<i32>
    %306 = llvm.getelementptr %305[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i32> to i64
    %308 = llvm.mlir.constant(16 : index) : i64
    %309 = llvm.add %307, %308  : i64
    %310 = llvm.call @malloc(%309) : (i64) -> !llvm.ptr<i8>
    %311 = llvm.bitcast %310 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i32> to i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.sub %308, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.urem %315, %308  : i64
    %317 = llvm.sub %315, %316  : i64
    %318 = llvm.inttoptr %317 : i64 to !llvm.ptr<i32>
    %319 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %320 = llvm.insertvalue %311, %319[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %318, %320[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.insertvalue %322, %321[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %300, %326[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %303, %327[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %302, %328[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %300, %329[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %301, %330[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%332 : i64)
  ^bb52(%335: i64):  // 2 preds: ^bb51, ^bb62
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%337 : i64)
  ^bb54(%340: i64):  // 2 preds: ^bb53, ^bb61
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%342 : i64)
  ^bb56(%345: i64):  // 2 preds: ^bb55, ^bb60
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%347 : i64)
  ^bb58(%350: i64):  // 2 preds: ^bb57, ^bb59
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %352 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mul %335, %353  : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mul %340, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mul %345, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.add %360, %350  : i64
    %362 = llvm.getelementptr %352[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %363 = llvm.load %362 : !llvm.ptr<i32>
    %364 = llvm.mlir.constant(false) : i1
    %365 = "llvm.intr.abs"(%363, %364) : (i32, i1) -> i32
    %366 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mul %335, %367  : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mul %340, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %345, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.add %374, %350  : i64
    %376 = llvm.getelementptr %366[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %365, %376 : !llvm.ptr<i32>
    %377 = llvm.add %350, %349  : i64
    llvm.br ^bb58(%377 : i64)
  ^bb60:  // pred: ^bb58
    %378 = llvm.add %345, %344  : i64
    llvm.br ^bb56(%378 : i64)
  ^bb61:  // pred: ^bb56
    %379 = llvm.add %340, %339  : i64
    llvm.br ^bb54(%379 : i64)
  ^bb62:  // pred: ^bb54
    %380 = llvm.add %335, %334  : i64
    llvm.br ^bb52(%380 : i64)
  ^bb63:  // pred: ^bb52
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.null : !llvm.ptr<f32>
    %390 = llvm.getelementptr %389[%388] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %391 = llvm.ptrtoint %390 : !llvm.ptr<f32> to i64
    %392 = llvm.mlir.constant(16 : index) : i64
    %393 = llvm.add %391, %392  : i64
    %394 = llvm.call @malloc(%393) : (i64) -> !llvm.ptr<i8>
    %395 = llvm.bitcast %394 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %396 = llvm.ptrtoint %395 : !llvm.ptr<f32> to i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.sub %392, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.urem %399, %392  : i64
    %401 = llvm.sub %399, %400  : i64
    %402 = llvm.inttoptr %401 : i64 to !llvm.ptr<f32>
    %403 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %404 = llvm.insertvalue %395, %403[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %402, %404[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.insertvalue %406, %405[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %381, %407[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %382, %408[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %383, %409[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %384, %410[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %387, %411[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %386, %412[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %384, %413[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %385, %414[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%416 : i64)
  ^bb64(%419: i64):  // 2 preds: ^bb63, ^bb74
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%421 : i64)
  ^bb66(%424: i64):  // 2 preds: ^bb65, ^bb73
    %425 = llvm.icmp "slt" %424, %422 : i64
    llvm.cond_br %425, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%426 : i64)
  ^bb68(%429: i64):  // 2 preds: ^bb67, ^bb72
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%431 : i64)
  ^bb70(%434: i64):  // 2 preds: ^bb69, ^bb71
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %436 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mul %419, %437  : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mul %424, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mul %429, %442  : i64
    %444 = llvm.add %441, %443  : i64
    %445 = llvm.add %444, %434  : i64
    %446 = llvm.getelementptr %436[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %447 = llvm.load %446 : !llvm.ptr<i32>
    %448 = llvm.sitofp %447 : i32 to f32
    %449 = llvm.extractvalue %415[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %419, %450  : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mul %424, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mul %429, %455  : i64
    %457 = llvm.add %454, %456  : i64
    %458 = llvm.add %457, %434  : i64
    %459 = llvm.getelementptr %449[%458] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %448, %459 : !llvm.ptr<f32>
    %460 = llvm.add %434, %433  : i64
    llvm.br ^bb70(%460 : i64)
  ^bb72:  // pred: ^bb70
    %461 = llvm.add %429, %428  : i64
    llvm.br ^bb68(%461 : i64)
  ^bb73:  // pred: ^bb68
    %462 = llvm.add %424, %423  : i64
    llvm.br ^bb66(%462 : i64)
  ^bb74:  // pred: ^bb66
    %463 = llvm.add %419, %418  : i64
    llvm.br ^bb64(%463 : i64)
  ^bb75:  // pred: ^bb64
    %464 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %465 = llvm.insertvalue %39, %464[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %466 = llvm.insertvalue %415, %465[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %466 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v6_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(5 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(4 : i64) : i64
    %82 = llvm.extractvalue %45[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.getelementptr %59[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %45[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.getelementptr %60[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.getelementptr %50[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.mlir.constant(4 : i64) : i64
    %89 = llvm.call @omTensorCreateUntyped(%88) : (i64) -> !llvm.ptr<i8>
    %90 = llvm.mlir.constant(1 : i64) : i64
    %91 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.bitcast %91 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %93 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%89, %90, %92, %94) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %95 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%89, %95) : (!llvm.ptr<i8>, i64) -> ()
    %96 = llvm.call @omTensorGetShape(%89) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%89) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %96[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %97[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(2 : i64) : i64
    %109 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %96[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %97[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(3 : i64) : i64
    %114 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %96[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %97[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.getelementptr %50[%118] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %89, %119 : !llvm.ptr<ptr<i8>>
    %120 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %120 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<145 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<145 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

