module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
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
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.null : !llvm.ptr<i32>
    %52 = llvm.getelementptr %51[%46] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i32> to i64
    %54 = llvm.mlir.constant(16 : index) : i64
    %55 = llvm.add %53, %54  : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i32> to i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.sub %54, %59  : i64
    %61 = llvm.add %58, %60  : i64
    %62 = llvm.urem %61, %54  : i64
    %63 = llvm.sub %61, %62  : i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr<i32>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %66 = llvm.insertvalue %57, %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %46, %69[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %49, %72[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %47, %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%78 : i64)
  ^bb1(%81: i64):  // 2 preds: ^bb0, ^bb11
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%83 : i64)
  ^bb3(%86: i64):  // 2 preds: ^bb2, ^bb10
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%88 : i64)
  ^bb5(%91: i64):  // 2 preds: ^bb4, ^bb9
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%93 : i64)
  ^bb7(%96: i64):  // 2 preds: ^bb6, ^bb8
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %98 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.add %81, %86  : i64
    %100 = llvm.add %99, %91  : i64
    %101 = llvm.add %100, %96  : i64
    %102 = llvm.getelementptr %98[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %103 = llvm.load %102 : !llvm.ptr<i32>
    %104 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.add %81, %86  : i64
    %106 = llvm.add %105, %91  : i64
    %107 = llvm.add %106, %96  : i64
    %108 = llvm.getelementptr %104[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %103, %108 : !llvm.ptr<i32>
    %109 = llvm.add %96, %95  : i64
    llvm.br ^bb7(%109 : i64)
  ^bb9:  // pred: ^bb7
    %110 = llvm.add %91, %90  : i64
    llvm.br ^bb5(%110 : i64)
  ^bb10:  // pred: ^bb5
    %111 = llvm.add %86, %85  : i64
    llvm.br ^bb3(%111 : i64)
  ^bb11:  // pred: ^bb3
    %112 = llvm.add %81, %80  : i64
    llvm.br ^bb1(%112 : i64)
  ^bb12:  // pred: ^bb1
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.null : !llvm.ptr<i64>
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i64> to i64
    %118 = llvm.mlir.constant(16 : index) : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.call @malloc(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %122 = llvm.ptrtoint %121 : !llvm.ptr<i64> to i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.sub %118, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.urem %125, %118  : i64
    %127 = llvm.sub %125, %126  : i64
    %128 = llvm.inttoptr %127 : i64 to !llvm.ptr<i64>
    %129 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %130 = llvm.insertvalue %121, %129[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %113, %133[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %114, %134[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%136 : i64)
  ^bb13(%139: i64):  // 2 preds: ^bb12, ^bb14
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %141 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %142 : !llvm.ptr<i64>
    %143 = llvm.add %139, %138  : i64
    llvm.br ^bb13(%143 : i64)
  ^bb15:  // pred: ^bb13
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.null : !llvm.ptr<i64>
    %147 = llvm.getelementptr %146[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i64> to i64
    %149 = llvm.mlir.constant(16 : index) : i64
    %150 = llvm.add %148, %149  : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i64> to i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.sub %149, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.urem %156, %149  : i64
    %158 = llvm.sub %156, %157  : i64
    %159 = llvm.inttoptr %158 : i64 to !llvm.ptr<i64>
    %160 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %161 = llvm.insertvalue %152, %160[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.insertvalue %163, %162[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %144, %164[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %145, %165[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(4 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%167 : i64)
  ^bb16(%170: i64):  // 2 preds: ^bb15, ^bb17
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %172 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.getelementptr %172[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %174 = llvm.load %173 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %176 = llvm.load %175 : !llvm.ptr<i64>
    %177 = llvm.mul %174, %176  : i64
    %178 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %179 : !llvm.ptr<i64>
    %180 = llvm.add %170, %169  : i64
    llvm.br ^bb16(%180 : i64)
  ^bb18:  // pred: ^bb16
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.null : !llvm.ptr<i1>
    %184 = llvm.getelementptr %183[%181] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<i1> to i64
    %186 = llvm.mlir.constant(16 : index) : i64
    %187 = llvm.add %185, %186  : i64
    %188 = llvm.call @malloc(%187) : (i64) -> !llvm.ptr<i8>
    %189 = llvm.bitcast %188 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i1> to i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.sub %186, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.urem %193, %186  : i64
    %195 = llvm.sub %193, %194  : i64
    %196 = llvm.inttoptr %195 : i64 to !llvm.ptr<i1>
    %197 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.insertvalue %189, %197[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %196, %198[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.insertvalue %200, %199[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %181, %201[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %182, %202[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%204 : i64)
  ^bb19(%207: i64):  // 2 preds: ^bb18, ^bb20
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %209 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.getelementptr %209[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %211 = llvm.load %210 : !llvm.ptr<i64>
    %212 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.getelementptr %212[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %214 = llvm.load %213 : !llvm.ptr<i64>
    %215 = llvm.icmp "eq" %211, %214 : i64
    %216 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.getelementptr %216[%207] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %215, %217 : !llvm.ptr<i1>
    %218 = llvm.add %207, %206  : i64
    llvm.br ^bb19(%218 : i64)
  ^bb21:  // pred: ^bb19
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.null : !llvm.ptr<i64>
    %222 = llvm.getelementptr %221[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i64> to i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.add %223, %224  : i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr<i8>
    %227 = llvm.bitcast %226 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i64> to i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.sub %224, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.urem %231, %224  : i64
    %233 = llvm.sub %231, %232  : i64
    %234 = llvm.inttoptr %233 : i64 to !llvm.ptr<i64>
    %235 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %227, %235[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %219, %239[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %220, %240[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%242 : i64)
  ^bb22(%245: i64):  // 2 preds: ^bb21, ^bb23
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %247 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%245] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %249 = llvm.load %248 : !llvm.ptr<i1>
    %250 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %252 = llvm.load %251 : !llvm.ptr<i64>
    %253 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %255 = llvm.load %254 : !llvm.ptr<i64>
    %256 = llvm.select %249, %252, %255 : i1, i64
    %257 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.getelementptr %257[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %256, %258 : !llvm.ptr<i64>
    %259 = llvm.add %245, %244  : i64
    llvm.br ^bb22(%259 : i64)
  ^bb24:  // pred: ^bb22
    %260 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %262 = llvm.load %261 : !llvm.ptr<i64>
    %263 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %265 = llvm.load %264 : !llvm.ptr<i64>
    %266 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %268 = llvm.load %267 : !llvm.ptr<i64>
    %269 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %271 = llvm.load %270 : !llvm.ptr<i64>
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mul %271, %268  : i64
    %274 = llvm.mul %273, %265  : i64
    %275 = llvm.mul %274, %262  : i64
    %276 = llvm.mlir.null : !llvm.ptr<i32>
    %277 = llvm.getelementptr %276[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i32> to i64
    %279 = llvm.mlir.constant(16 : index) : i64
    %280 = llvm.add %278, %279  : i64
    %281 = llvm.call @malloc(%280) : (i64) -> !llvm.ptr<i8>
    %282 = llvm.bitcast %281 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i32> to i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.sub %279, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.urem %286, %279  : i64
    %288 = llvm.sub %286, %287  : i64
    %289 = llvm.inttoptr %288 : i64 to !llvm.ptr<i32>
    %290 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %291 = llvm.insertvalue %282, %290[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %289, %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.insertvalue %293, %292[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %262, %294[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %265, %295[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %268, %296[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %271, %297[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %274, %298[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %271, %300[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %272, %301[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%303 : i64)
  ^bb25(%305: i64):  // 2 preds: ^bb24, ^bb35
    %306 = llvm.icmp "slt" %305, %262 : i64
    llvm.cond_br %306, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%307 : i64)
  ^bb27(%309: i64):  // 2 preds: ^bb26, ^bb34
    %310 = llvm.icmp "slt" %309, %265 : i64
    llvm.cond_br %310, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%311 : i64)
  ^bb29(%313: i64):  // 2 preds: ^bb28, ^bb33
    %314 = llvm.icmp "slt" %313, %268 : i64
    llvm.cond_br %314, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%315 : i64)
  ^bb31(%317: i64):  // 2 preds: ^bb30, ^bb32
    %318 = llvm.icmp "slt" %317, %271 : i64
    llvm.cond_br %318, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %319 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.add %15, %15  : i64
    %321 = llvm.add %320, %15  : i64
    %322 = llvm.add %321, %15  : i64
    %323 = llvm.getelementptr %319[%322] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %324 = llvm.load %323 : !llvm.ptr<i32>
    %325 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.extractvalue %302[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mul %305, %326  : i64
    %328 = llvm.extractvalue %302[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mul %309, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.extractvalue %302[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mul %313, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.add %333, %317  : i64
    %335 = llvm.getelementptr %325[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %324, %335 : !llvm.ptr<i32>
    %336 = llvm.add %317, %316  : i64
    llvm.br ^bb31(%336 : i64)
  ^bb33:  // pred: ^bb31
    %337 = llvm.add %313, %312  : i64
    llvm.br ^bb29(%337 : i64)
  ^bb34:  // pred: ^bb29
    %338 = llvm.add %309, %308  : i64
    llvm.br ^bb27(%338 : i64)
  ^bb35:  // pred: ^bb27
    %339 = llvm.add %305, %304  : i64
    llvm.br ^bb25(%339 : i64)
  ^bb36:  // pred: ^bb25
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mul %271, %268  : i64
    %342 = llvm.mul %341, %265  : i64
    %343 = llvm.mul %342, %262  : i64
    %344 = llvm.mlir.null : !llvm.ptr<f64>
    %345 = llvm.getelementptr %344[%343] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<f64> to i64
    %347 = llvm.mlir.constant(16 : index) : i64
    %348 = llvm.add %346, %347  : i64
    %349 = llvm.call @malloc(%348) : (i64) -> !llvm.ptr<i8>
    %350 = llvm.bitcast %349 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %351 = llvm.ptrtoint %350 : !llvm.ptr<f64> to i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.sub %347, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.urem %354, %347  : i64
    %356 = llvm.sub %354, %355  : i64
    %357 = llvm.inttoptr %356 : i64 to !llvm.ptr<f64>
    %358 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %359 = llvm.insertvalue %350, %358[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %357, %359[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.insertvalue %361, %360[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %262, %362[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %265, %363[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %268, %364[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %271, %365[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %342, %366[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %341, %367[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %271, %368[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %340, %369[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%371 : i64)
  ^bb37(%373: i64):  // 2 preds: ^bb36, ^bb47
    %374 = llvm.icmp "slt" %373, %262 : i64
    llvm.cond_br %374, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%375 : i64)
  ^bb39(%377: i64):  // 2 preds: ^bb38, ^bb46
    %378 = llvm.icmp "slt" %377, %265 : i64
    llvm.cond_br %378, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%379 : i64)
  ^bb41(%381: i64):  // 2 preds: ^bb40, ^bb45
    %382 = llvm.icmp "slt" %381, %268 : i64
    llvm.cond_br %382, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%383 : i64)
  ^bb43(%385: i64):  // 2 preds: ^bb42, ^bb44
    %386 = llvm.icmp "slt" %385, %271 : i64
    llvm.cond_br %386, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %387 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.extractvalue %302[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mul %373, %388  : i64
    %390 = llvm.extractvalue %302[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mul %377, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.extractvalue %302[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.mul %381, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.add %395, %385  : i64
    %397 = llvm.getelementptr %387[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %398 = llvm.load %397 : !llvm.ptr<i32>
    %399 = llvm.sitofp %398 : i32 to f64
    %400 = llvm.extractvalue %370[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.extractvalue %370[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mul %373, %401  : i64
    %403 = llvm.extractvalue %370[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mul %377, %403  : i64
    %405 = llvm.add %402, %404  : i64
    %406 = llvm.extractvalue %370[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.mul %381, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.add %408, %385  : i64
    %410 = llvm.getelementptr %400[%409] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %399, %410 : !llvm.ptr<f64>
    %411 = llvm.add %385, %384  : i64
    llvm.br ^bb43(%411 : i64)
  ^bb45:  // pred: ^bb43
    %412 = llvm.add %381, %380  : i64
    llvm.br ^bb41(%412 : i64)
  ^bb46:  // pred: ^bb41
    %413 = llvm.add %377, %376  : i64
    llvm.br ^bb39(%413 : i64)
  ^bb47:  // pred: ^bb39
    %414 = llvm.add %373, %372  : i64
    llvm.br ^bb37(%414 : i64)
  ^bb48:  // pred: ^bb37
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.null : !llvm.ptr<f64>
    %421 = llvm.getelementptr %420[%415] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %422 = llvm.ptrtoint %421 : !llvm.ptr<f64> to i64
    %423 = llvm.mlir.constant(16 : index) : i64
    %424 = llvm.add %422, %423  : i64
    %425 = llvm.call @malloc(%424) : (i64) -> !llvm.ptr<i8>
    %426 = llvm.bitcast %425 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<f64> to i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.sub %423, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.urem %430, %423  : i64
    %432 = llvm.sub %430, %431  : i64
    %433 = llvm.inttoptr %432 : i64 to !llvm.ptr<f64>
    %434 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %435 = llvm.insertvalue %426, %434[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %433, %435[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.insertvalue %437, %436[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %415, %438[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %416, %439[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %417, %440[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %418, %441[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %417, %443[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %418, %444[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%447 : i64)
  ^bb49(%449: i64):  // 2 preds: ^bb48, ^bb59
    %450 = llvm.icmp "slt" %449, %262 : i64
    llvm.cond_br %450, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%451 : i64)
  ^bb51(%453: i64):  // 2 preds: ^bb50, ^bb58
    %454 = llvm.icmp "slt" %453, %265 : i64
    llvm.cond_br %454, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%455 : i64)
  ^bb53(%457: i64):  // 2 preds: ^bb52, ^bb57
    %458 = llvm.icmp "slt" %457, %268 : i64
    llvm.cond_br %458, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%459 : i64)
  ^bb55(%461: i64):  // 2 preds: ^bb54, ^bb56
    %462 = llvm.icmp "slt" %461, %271 : i64
    llvm.cond_br %462, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %463 = llvm.extractvalue %370[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.extractvalue %370[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.mul %449, %464  : i64
    %466 = llvm.extractvalue %370[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mul %453, %466  : i64
    %468 = llvm.add %465, %467  : i64
    %469 = llvm.extractvalue %370[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.mul %457, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.add %471, %461  : i64
    %473 = llvm.getelementptr %463[%472] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %474 = llvm.load %473 : !llvm.ptr<f64>
    %475 = llvm.intr.floor(%474)  : (f64) -> f64
    %476 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.add %449, %453  : i64
    %478 = llvm.add %477, %457  : i64
    %479 = llvm.add %478, %461  : i64
    %480 = llvm.getelementptr %476[%479] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %475, %480 : !llvm.ptr<f64>
    %481 = llvm.add %461, %460  : i64
    llvm.br ^bb55(%481 : i64)
  ^bb57:  // pred: ^bb55
    %482 = llvm.add %457, %456  : i64
    llvm.br ^bb53(%482 : i64)
  ^bb58:  // pred: ^bb53
    %483 = llvm.add %453, %452  : i64
    llvm.br ^bb51(%483 : i64)
  ^bb59:  // pred: ^bb51
    %484 = llvm.add %449, %448  : i64
    llvm.br ^bb49(%484 : i64)
  ^bb60:  // pred: ^bb49
    llvm.return %446 : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

