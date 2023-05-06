module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<4> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.mlir.constant(4 : index) : i64
    %31 = llvm.mlir.constant(8 : index) : i64
    %32 = llvm.mlir.null : !llvm.ptr<i32>
    %33 = llvm.getelementptr %32[%31] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<i32> to i64
    %35 = llvm.mlir.constant(16 : index) : i64
    %36 = llvm.add %34, %35  : i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<i32> to i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.sub %35, %40  : i64
    %42 = llvm.add %39, %41  : i64
    %43 = llvm.urem %42, %35  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.insertvalue %38, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %24, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %25, %51[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %26, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %30, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %27, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %28, %57[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%59 : i64)
  ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb11
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%64 : i64)
  ^bb3(%67: i64):  // 2 preds: ^bb2, ^bb10
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%69 : i64)
  ^bb5(%72: i64):  // 2 preds: ^bb4, ^bb9
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%74 : i64)
  ^bb7(%77: i64):  // 2 preds: ^bb6, ^bb8
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %79 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(4 : index) : i64
    %81 = llvm.mul %62, %80  : i64
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mul %67, %82  : i64
    %84 = llvm.add %81, %83  : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mul %72, %85  : i64
    %87 = llvm.add %84, %86  : i64
    %88 = llvm.add %87, %77  : i64
    %89 = llvm.getelementptr %79[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.load %89 : !llvm.ptr<i32>
    %91 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%12] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.icmp "slt" %90, %93 : i32
    %95 = llvm.select %94, %90, %93 : i1, i32
    %96 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.mul %62, %97  : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mul %67, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mul %72, %102  : i64
    %104 = llvm.add %101, %103  : i64
    %105 = llvm.add %104, %77  : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %95, %106 : !llvm.ptr<i32>
    %107 = llvm.add %77, %76  : i64
    llvm.br ^bb7(%107 : i64)
  ^bb9:  // pred: ^bb7
    %108 = llvm.add %72, %71  : i64
    llvm.br ^bb5(%108 : i64)
  ^bb10:  // pred: ^bb5
    %109 = llvm.add %67, %66  : i64
    llvm.br ^bb3(%109 : i64)
  ^bb11:  // pred: ^bb3
    %110 = llvm.add %62, %61  : i64
    llvm.br ^bb1(%110 : i64)
  ^bb12:  // pred: ^bb1
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.mlir.constant(8 : index) : i64
    %119 = llvm.mlir.null : !llvm.ptr<i1>
    %120 = llvm.getelementptr %119[%118] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i1> to i64
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i1> to i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.sub %122, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.urem %129, %122  : i64
    %131 = llvm.sub %129, %130  : i64
    %132 = llvm.inttoptr %131 : i64 to !llvm.ptr<i1>
    %133 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %134 = llvm.insertvalue %125, %133[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %132, %134[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.insertvalue %136, %135[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %111, %137[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %112, %138[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %113, %139[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %114, %140[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %117, %141[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %116, %142[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %114, %143[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %115, %144[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%146 : i64)
  ^bb13(%149: i64):  // 2 preds: ^bb12, ^bb23
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%151 : i64)
  ^bb15(%154: i64):  // 2 preds: ^bb14, ^bb22
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%156 : i64)
  ^bb17(%159: i64):  // 2 preds: ^bb16, ^bb21
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%161 : i64)
  ^bb19(%164: i64):  // 2 preds: ^bb18, ^bb20
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %166 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.getelementptr %166[%12] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.load %167 : !llvm.ptr<i32>
    %169 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mul %149, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %154, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %159, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.add %177, %164  : i64
    %179 = llvm.getelementptr %169[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %180 = llvm.load %179 : !llvm.ptr<i32>
    %181 = llvm.icmp "slt" %168, %180 : i32
    %182 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(4 : index) : i64
    %184 = llvm.mul %149, %183  : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %154, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mul %159, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.add %190, %164  : i64
    %192 = llvm.getelementptr %182[%191] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %181, %192 : !llvm.ptr<i1>
    %193 = llvm.add %164, %163  : i64
    llvm.br ^bb19(%193 : i64)
  ^bb21:  // pred: ^bb19
    %194 = llvm.add %159, %158  : i64
    llvm.br ^bb17(%194 : i64)
  ^bb22:  // pred: ^bb17
    %195 = llvm.add %154, %153  : i64
    llvm.br ^bb15(%195 : i64)
  ^bb23:  // pred: ^bb15
    %196 = llvm.add %149, %148  : i64
    llvm.br ^bb13(%196 : i64)
  ^bb24:  // pred: ^bb13
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mlir.constant(8 : index) : i64
    %205 = llvm.mlir.null : !llvm.ptr<i1>
    %206 = llvm.getelementptr %205[%204] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<i1> to i64
    %208 = llvm.mlir.constant(16 : index) : i64
    %209 = llvm.add %207, %208  : i64
    %210 = llvm.call @malloc(%209) : (i64) -> !llvm.ptr<i8>
    %211 = llvm.bitcast %210 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %212 = llvm.ptrtoint %211 : !llvm.ptr<i1> to i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.sub %208, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.urem %215, %208  : i64
    %217 = llvm.sub %215, %216  : i64
    %218 = llvm.inttoptr %217 : i64 to !llvm.ptr<i1>
    %219 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %220 = llvm.insertvalue %211, %219[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %218, %220[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.insertvalue %222, %221[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %197, %223[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %198, %224[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %199, %225[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %200, %226[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %203, %227[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %202, %228[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %200, %229[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %201, %230[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%232 : i64)
  ^bb25(%235: i64):  // 2 preds: ^bb24, ^bb35
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%237 : i64)
  ^bb27(%240: i64):  // 2 preds: ^bb26, ^bb34
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%242 : i64)
  ^bb29(%245: i64):  // 2 preds: ^bb28, ^bb33
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%247 : i64)
  ^bb31(%250: i64):  // 2 preds: ^bb30, ^bb32
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %252 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mul %235, %253  : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mul %240, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %245, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.add %260, %250  : i64
    %262 = llvm.getelementptr %252[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.load %262 : !llvm.ptr<i32>
    %264 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(4 : index) : i64
    %266 = llvm.mul %235, %265  : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mul %240, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mul %245, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.add %272, %250  : i64
    %274 = llvm.getelementptr %264[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %275 = llvm.load %274 : !llvm.ptr<i32>
    %276 = llvm.icmp "slt" %263, %275 : i32
    %277 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mul %235, %278  : i64
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mul %240, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mul %245, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.add %285, %250  : i64
    %287 = llvm.getelementptr %277[%286] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %276, %287 : !llvm.ptr<i1>
    %288 = llvm.add %250, %249  : i64
    llvm.br ^bb31(%288 : i64)
  ^bb33:  // pred: ^bb31
    %289 = llvm.add %245, %244  : i64
    llvm.br ^bb29(%289 : i64)
  ^bb34:  // pred: ^bb29
    %290 = llvm.add %240, %239  : i64
    llvm.br ^bb27(%290 : i64)
  ^bb35:  // pred: ^bb27
    %291 = llvm.add %235, %234  : i64
    llvm.br ^bb25(%291 : i64)
  ^bb36:  // pred: ^bb25
    %292 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %293 = llvm.insertvalue %145, %292[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %294 = llvm.insertvalue %231, %293[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %294 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<139 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<139 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

