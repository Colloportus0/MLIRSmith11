module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 3 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[[[[6], [6]]], [[[4], [5]]]]> : tensor<2x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(-1 : i64) : i64
    %15 = llvm.mlir.constant(2147483647 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x array<1 x array<2 x array<1 x i32>>>>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<2 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(4 : index) : i64
    %75 = llvm.mlir.constant(4 : index) : i64
    %76 = llvm.mlir.constant(8 : index) : i64
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
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%104 : i64)
  ^bb1(%107: i64):  // 2 preds: ^bb0, ^bb11
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%109 : i64)
  ^bb3(%112: i64):  // 2 preds: ^bb2, ^bb10
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%114 : i64)
  ^bb5(%117: i64):  // 2 preds: ^bb4, ^bb9
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%119 : i64)
  ^bb7(%122: i64):  // 2 preds: ^bb6, ^bb8
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %124 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %16, %125  : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %112, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %16, %130  : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.add %132, %122  : i64
    %134 = llvm.getelementptr %124[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.load %134 : !llvm.ptr<i32>
    %136 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %107, %137  : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %112, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.add %141, %117  : i64
    %143 = llvm.add %142, %16  : i64
    %144 = llvm.getelementptr %136[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.icmp "slt" %135, %145 : i32
    %147 = llvm.select %146, %135, %145 : i1, i32
    %148 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mul %107, %149  : i64
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mul %112, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mul %117, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.add %156, %122  : i64
    %158 = llvm.getelementptr %148[%157] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %147, %158 : !llvm.ptr<i32>
    %159 = llvm.add %122, %121  : i64
    llvm.br ^bb7(%159 : i64)
  ^bb9:  // pred: ^bb7
    %160 = llvm.add %117, %116  : i64
    llvm.br ^bb5(%160 : i64)
  ^bb10:  // pred: ^bb5
    %161 = llvm.add %112, %111  : i64
    llvm.br ^bb3(%161 : i64)
  ^bb11:  // pred: ^bb3
    %162 = llvm.add %107, %106  : i64
    llvm.br ^bb1(%162 : i64)
  ^bb12:  // pred: ^bb1
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(4 : index) : i64
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
    %183 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %184 = llvm.insertvalue %175, %183[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %185 = llvm.insertvalue %182, %184[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.insertvalue %186, %185[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %188 = llvm.insertvalue %163, %187[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.insertvalue %164, %188[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %190 = llvm.insertvalue %165, %189[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.insertvalue %167, %190[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %192 = llvm.insertvalue %165, %191[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %193 = llvm.insertvalue %166, %192[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%194 : i64)
  ^bb13(%197: i64):  // 2 preds: ^bb12, ^bb20
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%199 : i64)
  ^bb15(%202: i64):  // 2 preds: ^bb14, ^bb19
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%204 : i64)
  ^bb17(%207: i64):  // 2 preds: ^bb16, ^bb18
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %209 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mul %197, %210  : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mul %202, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.add %214, %207  : i64
    %216 = llvm.getelementptr %209[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %15, %216 : !llvm.ptr<i32>
    %217 = llvm.add %207, %206  : i64
    llvm.br ^bb17(%217 : i64)
  ^bb19:  // pred: ^bb17
    %218 = llvm.add %202, %201  : i64
    llvm.br ^bb15(%218 : i64)
  ^bb20:  // pred: ^bb15
    %219 = llvm.add %197, %196  : i64
    llvm.br ^bb13(%219 : i64)
  ^bb21:  // pred: ^bb13
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%220 : i64)
  ^bb22(%223: i64):  // 2 preds: ^bb21, ^bb32
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%225 : i64)
  ^bb24(%228: i64):  // 2 preds: ^bb23, ^bb31
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%230 : i64)
  ^bb26(%233: i64):  // 2 preds: ^bb25, ^bb30
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%235 : i64)
  ^bb28(%238: i64):  // 2 preds: ^bb27, ^bb29
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %240 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.mlir.constant(4 : index) : i64
    %242 = llvm.mul %223, %241  : i64
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mul %228, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mul %233, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.add %248, %238  : i64
    %250 = llvm.getelementptr %240[%249] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %251 = llvm.load %250 : !llvm.ptr<i32>
    %252 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mul %223, %253  : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mul %228, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.add %257, %233  : i64
    %259 = llvm.getelementptr %252[%258] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %260 = llvm.load %259 : !llvm.ptr<i32>
    %261 = llvm.icmp "slt" %260, %251 : i32
    %262 = llvm.select %261, %260, %251 : i1, i32
    %263 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mul %223, %264  : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mul %228, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.add %268, %233  : i64
    %270 = llvm.getelementptr %263[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %262, %270 : !llvm.ptr<i32>
    %271 = llvm.add %238, %237  : i64
    llvm.br ^bb28(%271 : i64)
  ^bb30:  // pred: ^bb28
    %272 = llvm.add %233, %232  : i64
    llvm.br ^bb26(%272 : i64)
  ^bb31:  // pred: ^bb26
    %273 = llvm.add %228, %227  : i64
    llvm.br ^bb24(%273 : i64)
  ^bb32:  // pred: ^bb24
    %274 = llvm.add %223, %222  : i64
    llvm.br ^bb22(%274 : i64)
  ^bb33:  // pred: ^bb22
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.null : !llvm.ptr<i64>
    %280 = llvm.getelementptr %279[%278] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i64> to i64
    %282 = llvm.mlir.constant(16 : index) : i64
    %283 = llvm.add %281, %282  : i64
    %284 = llvm.call @malloc(%283) : (i64) -> !llvm.ptr<i8>
    %285 = llvm.bitcast %284 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i64> to i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.sub %282, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.urem %289, %282  : i64
    %291 = llvm.sub %289, %290  : i64
    %292 = llvm.inttoptr %291 : i64 to !llvm.ptr<i64>
    %293 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %294 = llvm.insertvalue %285, %293[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %295 = llvm.insertvalue %292, %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.insertvalue %296, %295[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.insertvalue %275, %297[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %299 = llvm.insertvalue %276, %298[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.insertvalue %276, %299[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %301 = llvm.insertvalue %277, %300[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%302 : i64)
  ^bb34(%305: i64):  // 2 preds: ^bb33, ^bb38
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%307 : i64)
  ^bb36(%310: i64):  // 2 preds: ^bb35, ^bb37
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %312 = llvm.extractvalue %301[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mul %305, %313  : i64
    %315 = llvm.add %314, %310  : i64
    %316 = llvm.getelementptr %312[%315] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %316 : !llvm.ptr<i64>
    %317 = llvm.add %310, %309  : i64
    llvm.br ^bb36(%317 : i64)
  ^bb38:  // pred: ^bb36
    %318 = llvm.add %305, %304  : i64
    llvm.br ^bb34(%318 : i64)
  ^bb39:  // pred: ^bb34
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%319 : i64)
  ^bb40(%322: i64):  // 2 preds: ^bb39, ^bb47
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%324 : i64)
  ^bb42(%327: i64):  // 2 preds: ^bb41, ^bb46
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%329 : i64)
  ^bb44(%332: i64):  // 2 preds: ^bb43, ^bb45
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %334 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mul %322, %335  : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %327, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.add %339, %332  : i64
    %341 = llvm.getelementptr %334[%340] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.load %341 : !llvm.ptr<i32>
    %343 = llvm.extractvalue %301[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mul %327, %344  : i64
    %346 = llvm.add %345, %332  : i64
    %347 = llvm.getelementptr %343[%346] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %348 = llvm.load %347 : !llvm.ptr<i64>
    %349 = llvm.icmp "slt" %348, %13 : i64
    %350 = llvm.select %349, %13, %348 : i1, i64
    %351 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mul %350, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %327, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.add %356, %332  : i64
    %358 = llvm.getelementptr %351[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.icmp "sgt" %342, %359 : i32
    %361 = llvm.select %360, %322, %350 : i1, i64
    %362 = llvm.extractvalue %301[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %327, %363  : i64
    %365 = llvm.add %364, %332  : i64
    %366 = llvm.getelementptr %362[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %361, %366 : !llvm.ptr<i64>
    %367 = llvm.add %332, %331  : i64
    llvm.br ^bb44(%367 : i64)
  ^bb46:  // pred: ^bb44
    %368 = llvm.add %327, %326  : i64
    llvm.br ^bb42(%368 : i64)
  ^bb47:  // pred: ^bb42
    %369 = llvm.add %322, %321  : i64
    llvm.br ^bb40(%369 : i64)
  ^bb48:  // pred: ^bb40
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(3 : index) : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(6 : index) : i64
    %375 = llvm.mlir.constant(12 : index) : i64
    %376 = llvm.mlir.null : !llvm.ptr<i32>
    %377 = llvm.getelementptr %376[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %378 = llvm.ptrtoint %377 : !llvm.ptr<i32> to i64
    %379 = llvm.mlir.constant(16 : index) : i64
    %380 = llvm.add %378, %379  : i64
    %381 = llvm.call @malloc(%380) : (i64) -> !llvm.ptr<i8>
    %382 = llvm.bitcast %381 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i32> to i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.sub %379, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.urem %386, %379  : i64
    %388 = llvm.sub %386, %387  : i64
    %389 = llvm.inttoptr %388 : i64 to !llvm.ptr<i32>
    %390 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %391 = llvm.insertvalue %382, %390[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %392 = llvm.insertvalue %389, %391[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.insertvalue %393, %392[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %395 = llvm.insertvalue %370, %394[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.insertvalue %371, %395[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.insertvalue %372, %396[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.insertvalue %374, %397[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.insertvalue %372, %398[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.insertvalue %373, %399[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%401 : i64)
  ^bb49(%404: i64):  // 2 preds: ^bb48, ^bb56
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%406 : i64)
  ^bb51(%409: i64):  // 2 preds: ^bb50, ^bb55
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%411 : i64)
  ^bb53(%414: i64):  // 2 preds: ^bb52, ^bb54
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %416 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mul %404, %417  : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mul %409, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.add %421, %414  : i64
    %423 = llvm.getelementptr %416[%422] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.load %423 : !llvm.ptr<i32>
    %425 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %426 = llvm.mlir.constant(6 : index) : i64
    %427 = llvm.mul %404, %426  : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mul %409, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.add %430, %414  : i64
    %432 = llvm.getelementptr %425[%431] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %424, %432 : !llvm.ptr<i32>
    %433 = llvm.add %414, %413  : i64
    llvm.br ^bb53(%433 : i64)
  ^bb55:  // pred: ^bb53
    %434 = llvm.add %409, %408  : i64
    llvm.br ^bb51(%434 : i64)
  ^bb56:  // pred: ^bb51
    %435 = llvm.add %404, %403  : i64
    llvm.br ^bb49(%435 : i64)
  ^bb57:  // pred: ^bb49
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%436 : i64)
  ^bb58(%439: i64):  // 2 preds: ^bb57, ^bb65
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%441 : i64)
  ^bb60(%444: i64):  // 2 preds: ^bb59, ^bb64
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%446 : i64)
  ^bb62(%449: i64):  // 2 preds: ^bb61, ^bb63
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.add %444, %451  : i64
    %453 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %454 = llvm.mlir.constant(2 : index) : i64
    %455 = llvm.mul %439, %454  : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mul %444, %456  : i64
    %458 = llvm.add %455, %457  : i64
    %459 = llvm.add %458, %449  : i64
    %460 = llvm.getelementptr %453[%459] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %461 = llvm.load %460 : !llvm.ptr<i32>
    %462 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %463 = llvm.mlir.constant(6 : index) : i64
    %464 = llvm.mul %439, %463  : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mul %452, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.add %467, %449  : i64
    %469 = llvm.getelementptr %462[%468] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %461, %469 : !llvm.ptr<i32>
    %470 = llvm.add %449, %448  : i64
    llvm.br ^bb62(%470 : i64)
  ^bb64:  // pred: ^bb62
    %471 = llvm.add %444, %443  : i64
    llvm.br ^bb60(%471 : i64)
  ^bb65:  // pred: ^bb60
    %472 = llvm.add %439, %438  : i64
    llvm.br ^bb58(%472 : i64)
  ^bb66:  // pred: ^bb58
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%473 : i64)
  ^bb67(%476: i64):  // 2 preds: ^bb66, ^bb74
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb68, ^bb75
  ^bb68:  // pred: ^bb67
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%478 : i64)
  ^bb69(%481: i64):  // 2 preds: ^bb68, ^bb73
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb70, ^bb74
  ^bb70:  // pred: ^bb69
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%483 : i64)
  ^bb71(%486: i64):  // 2 preds: ^bb70, ^bb72
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb72, ^bb73
  ^bb72:  // pred: ^bb71
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.add %481, %488  : i64
    %490 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.mlir.constant(2 : index) : i64
    %492 = llvm.mul %476, %491  : i64
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mul %481, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.add %495, %486  : i64
    %497 = llvm.getelementptr %490[%496] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %498 = llvm.load %497 : !llvm.ptr<i32>
    %499 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %500 = llvm.mlir.constant(6 : index) : i64
    %501 = llvm.mul %476, %500  : i64
    %502 = llvm.mlir.constant(2 : index) : i64
    %503 = llvm.mul %489, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.add %504, %486  : i64
    %506 = llvm.getelementptr %499[%505] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %498, %506 : !llvm.ptr<i32>
    %507 = llvm.add %486, %485  : i64
    llvm.br ^bb71(%507 : i64)
  ^bb73:  // pred: ^bb71
    %508 = llvm.add %481, %480  : i64
    llvm.br ^bb69(%508 : i64)
  ^bb74:  // pred: ^bb69
    %509 = llvm.add %476, %475  : i64
    llvm.br ^bb67(%509 : i64)
  ^bb75:  // pred: ^bb67
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.mlir.null : !llvm.ptr<i64>
    %513 = llvm.getelementptr %512[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %514 = llvm.ptrtoint %513 : !llvm.ptr<i64> to i64
    %515 = llvm.mlir.constant(16 : index) : i64
    %516 = llvm.add %514, %515  : i64
    %517 = llvm.call @malloc(%516) : (i64) -> !llvm.ptr<i8>
    %518 = llvm.bitcast %517 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %519 = llvm.ptrtoint %518 : !llvm.ptr<i64> to i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.sub %515, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.urem %522, %515  : i64
    %524 = llvm.sub %522, %523  : i64
    %525 = llvm.inttoptr %524 : i64 to !llvm.ptr<i64>
    %526 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %527 = llvm.insertvalue %518, %526[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.insertvalue %525, %527[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.insertvalue %529, %528[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.insertvalue %510, %530[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %532 = llvm.insertvalue %511, %531[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(4 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%533 : i64)
  ^bb76(%536: i64):  // 2 preds: ^bb75, ^bb77
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %538 = llvm.extractvalue %532[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %539 = llvm.getelementptr %538[%536] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %539 : !llvm.ptr<i64>
    %540 = llvm.add %536, %535  : i64
    llvm.br ^bb76(%540 : i64)
  ^bb78:  // pred: ^bb76
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.null : !llvm.ptr<i64>
    %544 = llvm.getelementptr %543[%541] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %545 = llvm.ptrtoint %544 : !llvm.ptr<i64> to i64
    %546 = llvm.mlir.constant(16 : index) : i64
    %547 = llvm.add %545, %546  : i64
    %548 = llvm.call @malloc(%547) : (i64) -> !llvm.ptr<i8>
    %549 = llvm.bitcast %548 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %550 = llvm.ptrtoint %549 : !llvm.ptr<i64> to i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.sub %546, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.urem %553, %546  : i64
    %555 = llvm.sub %553, %554  : i64
    %556 = llvm.inttoptr %555 : i64 to !llvm.ptr<i64>
    %557 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %558 = llvm.insertvalue %549, %557[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %559 = llvm.insertvalue %556, %558[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.insertvalue %560, %559[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %562 = llvm.insertvalue %541, %561[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.insertvalue %542, %562[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.mlir.constant(0 : index) : i64
    %565 = llvm.mlir.constant(4 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%564 : i64)
  ^bb79(%567: i64):  // 2 preds: ^bb78, ^bb80
    %568 = llvm.icmp "slt" %567, %565 : i64
    llvm.cond_br %568, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %569 = llvm.extractvalue %532[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.getelementptr %569[%567] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %571 = llvm.load %570 : !llvm.ptr<i64>
    %572 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %573 = llvm.load %572 : !llvm.ptr<i64>
    %574 = llvm.mul %571, %573  : i64
    %575 = llvm.extractvalue %563[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %576 = llvm.getelementptr %575[%567] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %574, %576 : !llvm.ptr<i64>
    %577 = llvm.add %567, %566  : i64
    llvm.br ^bb79(%577 : i64)
  ^bb81:  // pred: ^bb79
    %578 = llvm.mlir.constant(4 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    %580 = llvm.mlir.null : !llvm.ptr<i1>
    %581 = llvm.getelementptr %580[%578] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %582 = llvm.ptrtoint %581 : !llvm.ptr<i1> to i64
    %583 = llvm.mlir.constant(16 : index) : i64
    %584 = llvm.add %582, %583  : i64
    %585 = llvm.call @malloc(%584) : (i64) -> !llvm.ptr<i8>
    %586 = llvm.bitcast %585 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %587 = llvm.ptrtoint %586 : !llvm.ptr<i1> to i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.sub %583, %588  : i64
    %590 = llvm.add %587, %589  : i64
    %591 = llvm.urem %590, %583  : i64
    %592 = llvm.sub %590, %591  : i64
    %593 = llvm.inttoptr %592 : i64 to !llvm.ptr<i1>
    %594 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %595 = llvm.insertvalue %586, %594[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %596 = llvm.insertvalue %593, %595[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %597 = llvm.mlir.constant(0 : index) : i64
    %598 = llvm.insertvalue %597, %596[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %599 = llvm.insertvalue %578, %598[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %600 = llvm.insertvalue %579, %599[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.mlir.constant(4 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%601 : i64)
  ^bb82(%604: i64):  // 2 preds: ^bb81, ^bb83
    %605 = llvm.icmp "slt" %604, %602 : i64
    llvm.cond_br %605, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %606 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.getelementptr %606[%604] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %608 = llvm.load %607 : !llvm.ptr<i64>
    %609 = llvm.extractvalue %563[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %610 = llvm.getelementptr %609[%604] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %611 = llvm.load %610 : !llvm.ptr<i64>
    %612 = llvm.icmp "eq" %608, %611 : i64
    %613 = llvm.extractvalue %600[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.getelementptr %613[%604] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %612, %614 : !llvm.ptr<i1>
    %615 = llvm.add %604, %603  : i64
    llvm.br ^bb82(%615 : i64)
  ^bb84:  // pred: ^bb82
    %616 = llvm.mlir.constant(4 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.null : !llvm.ptr<i64>
    %619 = llvm.getelementptr %618[%616] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %620 = llvm.ptrtoint %619 : !llvm.ptr<i64> to i64
    %621 = llvm.mlir.constant(16 : index) : i64
    %622 = llvm.add %620, %621  : i64
    %623 = llvm.call @malloc(%622) : (i64) -> !llvm.ptr<i8>
    %624 = llvm.bitcast %623 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %625 = llvm.ptrtoint %624 : !llvm.ptr<i64> to i64
    %626 = llvm.mlir.constant(1 : index) : i64
    %627 = llvm.sub %621, %626  : i64
    %628 = llvm.add %625, %627  : i64
    %629 = llvm.urem %628, %621  : i64
    %630 = llvm.sub %628, %629  : i64
    %631 = llvm.inttoptr %630 : i64 to !llvm.ptr<i64>
    %632 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %633 = llvm.insertvalue %624, %632[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %634 = llvm.insertvalue %631, %633[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.insertvalue %635, %634[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %637 = llvm.insertvalue %616, %636[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %638 = llvm.insertvalue %617, %637[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %639 = llvm.mlir.constant(0 : index) : i64
    %640 = llvm.mlir.constant(4 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%639 : i64)
  ^bb85(%642: i64):  // 2 preds: ^bb84, ^bb86
    %643 = llvm.icmp "slt" %642, %640 : i64
    llvm.cond_br %643, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %644 = llvm.extractvalue %600[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.getelementptr %644[%642] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %646 = llvm.load %645 : !llvm.ptr<i1>
    %647 = llvm.extractvalue %532[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %648 = llvm.getelementptr %647[%642] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %649 = llvm.load %648 : !llvm.ptr<i64>
    %650 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %651 = llvm.getelementptr %650[%642] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %652 = llvm.load %651 : !llvm.ptr<i64>
    %653 = llvm.select %646, %649, %652 : i1, i64
    %654 = llvm.extractvalue %638[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %655 = llvm.getelementptr %654[%642] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %653, %655 : !llvm.ptr<i64>
    %656 = llvm.add %642, %641  : i64
    llvm.br ^bb85(%656 : i64)
  ^bb87:  // pred: ^bb85
    %657 = llvm.mlir.constant(2 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    %659 = llvm.mlir.constant(2 : index) : i64
    %660 = llvm.mlir.constant(2 : index) : i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.mlir.constant(4 : index) : i64
    %663 = llvm.mlir.constant(4 : index) : i64
    %664 = llvm.mlir.constant(8 : index) : i64
    %665 = llvm.mlir.null : !llvm.ptr<i32>
    %666 = llvm.getelementptr %665[%664] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %667 = llvm.ptrtoint %666 : !llvm.ptr<i32> to i64
    %668 = llvm.mlir.constant(16 : index) : i64
    %669 = llvm.add %667, %668  : i64
    %670 = llvm.call @malloc(%669) : (i64) -> !llvm.ptr<i8>
    %671 = llvm.bitcast %670 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %672 = llvm.ptrtoint %671 : !llvm.ptr<i32> to i64
    %673 = llvm.mlir.constant(1 : index) : i64
    %674 = llvm.sub %668, %673  : i64
    %675 = llvm.add %672, %674  : i64
    %676 = llvm.urem %675, %668  : i64
    %677 = llvm.sub %675, %676  : i64
    %678 = llvm.inttoptr %677 : i64 to !llvm.ptr<i32>
    %679 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %680 = llvm.insertvalue %671, %679[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.insertvalue %678, %680[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.mlir.constant(0 : index) : i64
    %683 = llvm.insertvalue %682, %681[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %684 = llvm.insertvalue %657, %683[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.insertvalue %658, %684[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %686 = llvm.insertvalue %659, %685[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.insertvalue %660, %686[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %688 = llvm.insertvalue %663, %687[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.insertvalue %662, %688[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %690 = llvm.insertvalue %660, %689[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %691 = llvm.insertvalue %661, %690[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %692 = llvm.mlir.constant(0 : index) : i64
    %693 = llvm.mlir.constant(2 : index) : i64
    %694 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%692 : i64)
  ^bb88(%695: i64):  // 2 preds: ^bb87, ^bb98
    %696 = llvm.icmp "slt" %695, %693 : i64
    llvm.cond_br %696, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %697 = llvm.mlir.constant(0 : index) : i64
    %698 = llvm.mlir.constant(1 : index) : i64
    %699 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%697 : i64)
  ^bb90(%700: i64):  // 2 preds: ^bb89, ^bb97
    %701 = llvm.icmp "slt" %700, %698 : i64
    llvm.cond_br %701, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %702 = llvm.mlir.constant(0 : index) : i64
    %703 = llvm.mlir.constant(2 : index) : i64
    %704 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%702 : i64)
  ^bb92(%705: i64):  // 2 preds: ^bb91, ^bb96
    %706 = llvm.icmp "slt" %705, %703 : i64
    llvm.cond_br %706, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %707 = llvm.mlir.constant(0 : index) : i64
    %708 = llvm.mlir.constant(2 : index) : i64
    %709 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%707 : i64)
  ^bb94(%710: i64):  // 2 preds: ^bb93, ^bb95
    %711 = llvm.icmp "slt" %710, %708 : i64
    llvm.cond_br %711, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %712 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %713 = llvm.mlir.constant(4 : index) : i64
    %714 = llvm.mul %695, %713  : i64
    %715 = llvm.mlir.constant(4 : index) : i64
    %716 = llvm.mul %16, %715  : i64
    %717 = llvm.add %714, %716  : i64
    %718 = llvm.mlir.constant(2 : index) : i64
    %719 = llvm.mul %705, %718  : i64
    %720 = llvm.add %717, %719  : i64
    %721 = llvm.add %720, %710  : i64
    %722 = llvm.getelementptr %712[%721] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %723 = llvm.load %722 : !llvm.ptr<i32>
    %724 = llvm.extractvalue %691[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %725 = llvm.mlir.constant(4 : index) : i64
    %726 = llvm.mul %695, %725  : i64
    %727 = llvm.mlir.constant(4 : index) : i64
    %728 = llvm.mul %700, %727  : i64
    %729 = llvm.add %726, %728  : i64
    %730 = llvm.mlir.constant(2 : index) : i64
    %731 = llvm.mul %705, %730  : i64
    %732 = llvm.add %729, %731  : i64
    %733 = llvm.add %732, %710  : i64
    %734 = llvm.getelementptr %724[%733] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %723, %734 : !llvm.ptr<i32>
    %735 = llvm.add %710, %709  : i64
    llvm.br ^bb94(%735 : i64)
  ^bb96:  // pred: ^bb94
    %736 = llvm.add %705, %704  : i64
    llvm.br ^bb92(%736 : i64)
  ^bb97:  // pred: ^bb92
    %737 = llvm.add %700, %699  : i64
    llvm.br ^bb90(%737 : i64)
  ^bb98:  // pred: ^bb90
    %738 = llvm.add %695, %694  : i64
    llvm.br ^bb88(%738 : i64)
  ^bb99:  // pred: ^bb88
    %739 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %740 = llvm.insertvalue %301, %739[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %741 = llvm.insertvalue %400, %740[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %742 = llvm.insertvalue %691, %741[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %742 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(2 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.getelementptr %51[%72] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %73 : !llvm.ptr<ptr<i8>>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.call @omTensorCreateUntyped(%74) : (i64) -> !llvm.ptr<i8>
    %76 = llvm.mlir.constant(1 : i64) : i64
    %77 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.bitcast %77 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %79 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.bitcast %79 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%75, %76, %78, %80) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %81 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%75, %81) : (!llvm.ptr<i8>, i64) -> ()
    %82 = llvm.call @omTensorGetShape(%75) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%75) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.getelementptr %82[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %83[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(1 : i64) : i64
    %90 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.getelementptr %82[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.getelementptr %83[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(2 : i64) : i64
    %95 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.getelementptr %82[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.getelementptr %83[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.getelementptr %51[%99] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %75, %100 : !llvm.ptr<ptr<i8>>
    %101 = llvm.mlir.constant(4 : i64) : i64
    %102 = llvm.call @omTensorCreateUntyped(%101) : (i64) -> !llvm.ptr<i8>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.bitcast %104 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %106 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%102, %103, %105, %107) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %108 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%102, %108) : (!llvm.ptr<i8>, i64) -> ()
    %109 = llvm.call @omTensorGetShape(%102) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %110 = llvm.call @omTensorGetStrides(%102) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %111 = llvm.mlir.constant(0 : i64) : i64
    %112 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %109[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %110[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(1 : i64) : i64
    %117 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %109[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %110[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(2 : i64) : i64
    %122 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %109[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %110[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %109[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %110[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.getelementptr %51[%131] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %102, %132 : !llvm.ptr<ptr<i8>>
    %133 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %133 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<199 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<199 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

