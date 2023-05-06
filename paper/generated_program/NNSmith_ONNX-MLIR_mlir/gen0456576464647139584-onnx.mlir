module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(-2147483648 : i32) : i32
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
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
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %47, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %48, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %115 = llvm.mlir.constant(1 : index) : i64
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
    %124 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %107, %125  : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %112, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %117, %130  : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.add %132, %122  : i64
    %134 = llvm.getelementptr %124[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.load %134 : !llvm.ptr<i32>
    %136 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %107, %137  : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %112, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %117, %142  : i64
    %144 = llvm.add %141, %143  : i64
    %145 = llvm.add %144, %122  : i64
    %146 = llvm.getelementptr %136[%145] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %135, %146 : !llvm.ptr<i32>
    %147 = llvm.add %122, %121  : i64
    llvm.br ^bb7(%147 : i64)
  ^bb9:  // pred: ^bb7
    %148 = llvm.add %117, %116  : i64
    llvm.br ^bb5(%148 : i64)
  ^bb10:  // pred: ^bb5
    %149 = llvm.add %112, %111  : i64
    llvm.br ^bb3(%149 : i64)
  ^bb11:  // pred: ^bb3
    %150 = llvm.add %107, %106  : i64
    llvm.br ^bb1(%150 : i64)
  ^bb12:  // pred: ^bb1
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.null : !llvm.ptr<i64>
    %154 = llvm.getelementptr %153[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i64> to i64
    %156 = llvm.mlir.constant(16 : index) : i64
    %157 = llvm.add %155, %156  : i64
    %158 = llvm.call @malloc(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.bitcast %158 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i64> to i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.sub %156, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.urem %163, %156  : i64
    %165 = llvm.sub %163, %164  : i64
    %166 = llvm.inttoptr %165 : i64 to !llvm.ptr<i64>
    %167 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %168 = llvm.insertvalue %159, %167[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.insertvalue %151, %171[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %152, %172[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%174 : i64)
  ^bb13(%177: i64):  // 2 preds: ^bb12, ^bb14
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %179 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.getelementptr %179[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %180 : !llvm.ptr<i64>
    %181 = llvm.add %177, %176  : i64
    llvm.br ^bb13(%181 : i64)
  ^bb15:  // pred: ^bb13
    %182 = llvm.mlir.constant(4 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.null : !llvm.ptr<i64>
    %185 = llvm.getelementptr %184[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %186 = llvm.ptrtoint %185 : !llvm.ptr<i64> to i64
    %187 = llvm.mlir.constant(16 : index) : i64
    %188 = llvm.add %186, %187  : i64
    %189 = llvm.call @malloc(%188) : (i64) -> !llvm.ptr<i8>
    %190 = llvm.bitcast %189 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %191 = llvm.ptrtoint %190 : !llvm.ptr<i64> to i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.sub %187, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.urem %194, %187  : i64
    %196 = llvm.sub %194, %195  : i64
    %197 = llvm.inttoptr %196 : i64 to !llvm.ptr<i64>
    %198 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %199 = llvm.insertvalue %190, %198[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %197, %199[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.insertvalue %201, %200[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %182, %202[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %183, %203[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%205 : i64)
  ^bb16(%208: i64):  // 2 preds: ^bb15, ^bb17
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %210 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.getelementptr %210[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %212 = llvm.load %211 : !llvm.ptr<i64>
    %213 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %214 = llvm.load %213 : !llvm.ptr<i64>
    %215 = llvm.mul %212, %214  : i64
    %216 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.getelementptr %216[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %215, %217 : !llvm.ptr<i64>
    %218 = llvm.add %208, %207  : i64
    llvm.br ^bb16(%218 : i64)
  ^bb18:  // pred: ^bb16
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.null : !llvm.ptr<i1>
    %222 = llvm.getelementptr %221[%219] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i1> to i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.add %223, %224  : i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr<i8>
    %227 = llvm.bitcast %226 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i1> to i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.sub %224, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.urem %231, %224  : i64
    %233 = llvm.sub %231, %232  : i64
    %234 = llvm.inttoptr %233 : i64 to !llvm.ptr<i1>
    %235 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %227, %235[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %219, %239[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %220, %240[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%242 : i64)
  ^bb19(%245: i64):  // 2 preds: ^bb18, ^bb20
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %247 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %249 = llvm.load %248 : !llvm.ptr<i64>
    %250 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %252 = llvm.load %251 : !llvm.ptr<i64>
    %253 = llvm.icmp "eq" %249, %252 : i64
    %254 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.getelementptr %254[%245] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %253, %255 : !llvm.ptr<i1>
    %256 = llvm.add %245, %244  : i64
    llvm.br ^bb19(%256 : i64)
  ^bb21:  // pred: ^bb19
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.null : !llvm.ptr<i64>
    %260 = llvm.getelementptr %259[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i64> to i64
    %262 = llvm.mlir.constant(16 : index) : i64
    %263 = llvm.add %261, %262  : i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr<i8>
    %265 = llvm.bitcast %264 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %266 = llvm.ptrtoint %265 : !llvm.ptr<i64> to i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.sub %262, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.urem %269, %262  : i64
    %271 = llvm.sub %269, %270  : i64
    %272 = llvm.inttoptr %271 : i64 to !llvm.ptr<i64>
    %273 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %274 = llvm.insertvalue %265, %273[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.insertvalue %257, %277[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.insertvalue %258, %278[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%280 : i64)
  ^bb22(%283: i64):  // 2 preds: ^bb21, ^bb23
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %285 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.getelementptr %285[%283] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %287 = llvm.load %286 : !llvm.ptr<i1>
    %288 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.getelementptr %288[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %290 = llvm.load %289 : !llvm.ptr<i64>
    %291 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.getelementptr %291[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %293 = llvm.load %292 : !llvm.ptr<i64>
    %294 = llvm.select %287, %290, %293 : i1, i64
    %295 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %294, %296 : !llvm.ptr<i64>
    %297 = llvm.add %283, %282  : i64
    llvm.br ^bb22(%297 : i64)
  ^bb24:  // pred: ^bb22
    %298 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.getelementptr %298[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %300 = llvm.load %299 : !llvm.ptr<i64>
    %301 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.getelementptr %301[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %303 = llvm.load %302 : !llvm.ptr<i64>
    %304 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.getelementptr %304[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.load %305 : !llvm.ptr<i64>
    %307 = llvm.mlir.constant(2 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mul %307, %306  : i64
    %310 = llvm.mul %309, %303  : i64
    %311 = llvm.mul %310, %300  : i64
    %312 = llvm.mlir.null : !llvm.ptr<i32>
    %313 = llvm.getelementptr %312[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %314 = llvm.ptrtoint %313 : !llvm.ptr<i32> to i64
    %315 = llvm.mlir.constant(16 : index) : i64
    %316 = llvm.add %314, %315  : i64
    %317 = llvm.call @malloc(%316) : (i64) -> !llvm.ptr<i8>
    %318 = llvm.bitcast %317 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %319 = llvm.ptrtoint %318 : !llvm.ptr<i32> to i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.sub %315, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.urem %322, %315  : i64
    %324 = llvm.sub %322, %323  : i64
    %325 = llvm.inttoptr %324 : i64 to !llvm.ptr<i32>
    %326 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %327 = llvm.insertvalue %318, %326[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %325, %327[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.insertvalue %329, %328[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %300, %330[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %303, %331[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %306, %332[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %307, %333[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %310, %334[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %309, %335[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %307, %336[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %308, %337[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%339 : i64)
  ^bb25(%341: i64):  // 2 preds: ^bb24, ^bb35
    %342 = llvm.icmp "slt" %341, %300 : i64
    llvm.cond_br %342, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%343 : i64)
  ^bb27(%345: i64):  // 2 preds: ^bb26, ^bb34
    %346 = llvm.icmp "slt" %345, %303 : i64
    llvm.cond_br %346, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%347 : i64)
  ^bb29(%349: i64):  // 2 preds: ^bb28, ^bb33
    %350 = llvm.icmp "slt" %349, %306 : i64
    llvm.cond_br %350, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%351 : i64)
  ^bb31(%354: i64):  // 2 preds: ^bb30, ^bb32
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %356 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mul %14, %357  : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mul %14, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %14, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.add %364, %354  : i64
    %366 = llvm.getelementptr %356[%365] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %367 = llvm.load %366 : !llvm.ptr<i32>
    %368 = llvm.extractvalue %338[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.extractvalue %338[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.mul %341, %369  : i64
    %371 = llvm.extractvalue %338[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.mul %345, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mul %349, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.add %376, %354  : i64
    %378 = llvm.getelementptr %368[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %367, %378 : !llvm.ptr<i32>
    %379 = llvm.add %354, %353  : i64
    llvm.br ^bb31(%379 : i64)
  ^bb33:  // pred: ^bb31
    %380 = llvm.add %349, %348  : i64
    llvm.br ^bb29(%380 : i64)
  ^bb34:  // pred: ^bb29
    %381 = llvm.add %345, %344  : i64
    llvm.br ^bb27(%381 : i64)
  ^bb35:  // pred: ^bb27
    %382 = llvm.add %341, %340  : i64
    llvm.br ^bb25(%382 : i64)
  ^bb36:  // pred: ^bb25
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.null : !llvm.ptr<i32>
    %388 = llvm.getelementptr %387[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %389 = llvm.ptrtoint %388 : !llvm.ptr<i32> to i64
    %390 = llvm.mlir.constant(16 : index) : i64
    %391 = llvm.add %389, %390  : i64
    %392 = llvm.call @malloc(%391) : (i64) -> !llvm.ptr<i8>
    %393 = llvm.bitcast %392 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %394 = llvm.ptrtoint %393 : !llvm.ptr<i32> to i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.sub %390, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.urem %397, %390  : i64
    %399 = llvm.sub %397, %398  : i64
    %400 = llvm.inttoptr %399 : i64 to !llvm.ptr<i32>
    %401 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %402 = llvm.insertvalue %393, %401[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.insertvalue %400, %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.insertvalue %404, %403[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.insertvalue %383, %405[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %407 = llvm.insertvalue %384, %406[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.insertvalue %385, %407[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.insertvalue %384, %408[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %410 = llvm.insertvalue %385, %409[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.insertvalue %386, %410[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%412 : i64)
  ^bb37(%415: i64):  // 2 preds: ^bb36, ^bb44
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%417 : i64)
  ^bb39(%420: i64):  // 2 preds: ^bb38, ^bb43
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%422 : i64)
  ^bb41(%425: i64):  // 2 preds: ^bb40, ^bb42
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %427 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %428 = llvm.add %415, %420  : i64
    %429 = llvm.add %428, %425  : i64
    %430 = llvm.getelementptr %427[%429] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %430 : !llvm.ptr<i32>
    %431 = llvm.add %425, %424  : i64
    llvm.br ^bb41(%431 : i64)
  ^bb43:  // pred: ^bb41
    %432 = llvm.add %420, %419  : i64
    llvm.br ^bb39(%432 : i64)
  ^bb44:  // pred: ^bb39
    %433 = llvm.add %415, %414  : i64
    llvm.br ^bb37(%433 : i64)
  ^bb45:  // pred: ^bb37
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%434 : i64)
  ^bb46(%436: i64):  // 2 preds: ^bb45, ^bb56
    %437 = llvm.icmp "slt" %436, %300 : i64
    llvm.cond_br %437, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%438 : i64)
  ^bb48(%440: i64):  // 2 preds: ^bb47, ^bb55
    %441 = llvm.icmp "slt" %440, %303 : i64
    llvm.cond_br %441, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%442 : i64)
  ^bb50(%444: i64):  // 2 preds: ^bb49, ^bb54
    %445 = llvm.icmp "slt" %444, %306 : i64
    llvm.cond_br %445, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%446 : i64)
  ^bb52(%449: i64):  // 2 preds: ^bb51, ^bb53
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %451 = llvm.extractvalue %338[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.extractvalue %338[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mul %436, %452  : i64
    %454 = llvm.extractvalue %338[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mul %440, %454  : i64
    %456 = llvm.add %453, %455  : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mul %444, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.add %459, %449  : i64
    %461 = llvm.getelementptr %451[%460] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %462 = llvm.load %461 : !llvm.ptr<i32>
    %463 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %464 = llvm.add %436, %440  : i64
    %465 = llvm.add %464, %444  : i64
    %466 = llvm.getelementptr %463[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %467 = llvm.load %466 : !llvm.ptr<i32>
    %468 = llvm.icmp "sgt" %467, %462 : i32
    %469 = llvm.select %468, %467, %462 : i1, i32
    %470 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %471 = llvm.add %436, %440  : i64
    %472 = llvm.add %471, %444  : i64
    %473 = llvm.getelementptr %470[%472] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %469, %473 : !llvm.ptr<i32>
    %474 = llvm.add %449, %448  : i64
    llvm.br ^bb52(%474 : i64)
  ^bb54:  // pred: ^bb52
    %475 = llvm.add %444, %443  : i64
    llvm.br ^bb50(%475 : i64)
  ^bb55:  // pred: ^bb50
    %476 = llvm.add %440, %439  : i64
    llvm.br ^bb48(%476 : i64)
  ^bb56:  // pred: ^bb48
    %477 = llvm.add %436, %435  : i64
    llvm.br ^bb46(%477 : i64)
  ^bb57:  // pred: ^bb46
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.null : !llvm.ptr<i1>
    %487 = llvm.getelementptr %486[%485] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %488 = llvm.ptrtoint %487 : !llvm.ptr<i1> to i64
    %489 = llvm.mlir.constant(16 : index) : i64
    %490 = llvm.add %488, %489  : i64
    %491 = llvm.call @malloc(%490) : (i64) -> !llvm.ptr<i8>
    %492 = llvm.bitcast %491 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i1> to i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.sub %489, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.urem %496, %489  : i64
    %498 = llvm.sub %496, %497  : i64
    %499 = llvm.inttoptr %498 : i64 to !llvm.ptr<i1>
    %500 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %501 = llvm.insertvalue %492, %500[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %499, %501[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.insertvalue %503, %502[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %478, %504[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %479, %505[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %480, %506[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %481, %507[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %484, %508[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %483, %509[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %481, %510[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %482, %511[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%513 : i64)
  ^bb58(%516: i64):  // 2 preds: ^bb57, ^bb68
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%518 : i64)
  ^bb60(%521: i64):  // 2 preds: ^bb59, ^bb67
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%523 : i64)
  ^bb62(%526: i64):  // 2 preds: ^bb61, ^bb66
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(2 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%528 : i64)
  ^bb64(%531: i64):  // 2 preds: ^bb63, ^bb65
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %533 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mul %516, %534  : i64
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.mul %521, %536  : i64
    %538 = llvm.add %535, %537  : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mul %526, %539  : i64
    %541 = llvm.add %538, %540  : i64
    %542 = llvm.add %541, %531  : i64
    %543 = llvm.getelementptr %533[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %544 = llvm.load %543 : !llvm.ptr<i32>
    %545 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(2 : index) : i64
    %547 = llvm.mul %516, %546  : i64
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mul %521, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.mlir.constant(2 : index) : i64
    %552 = llvm.mul %526, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.add %553, %531  : i64
    %555 = llvm.getelementptr %545[%554] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %556 = llvm.load %555 : !llvm.ptr<i32>
    %557 = llvm.icmp "slt" %544, %556 : i32
    %558 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mul %516, %559  : i64
    %561 = llvm.mlir.constant(2 : index) : i64
    %562 = llvm.mul %521, %561  : i64
    %563 = llvm.add %560, %562  : i64
    %564 = llvm.mlir.constant(2 : index) : i64
    %565 = llvm.mul %526, %564  : i64
    %566 = llvm.add %563, %565  : i64
    %567 = llvm.add %566, %531  : i64
    %568 = llvm.getelementptr %558[%567] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %557, %568 : !llvm.ptr<i1>
    %569 = llvm.add %531, %530  : i64
    llvm.br ^bb64(%569 : i64)
  ^bb66:  // pred: ^bb64
    %570 = llvm.add %526, %525  : i64
    llvm.br ^bb62(%570 : i64)
  ^bb67:  // pred: ^bb62
    %571 = llvm.add %521, %520  : i64
    llvm.br ^bb60(%571 : i64)
  ^bb68:  // pred: ^bb60
    %572 = llvm.add %516, %515  : i64
    llvm.br ^bb58(%572 : i64)
  ^bb69:  // pred: ^bb58
    %573 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %574 = llvm.insertvalue %411, %573[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %575 = llvm.insertvalue %512, %574[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %575 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<136 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<136 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

