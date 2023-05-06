module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.constant(2147483647 : i32) : i32
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.mlir.constant(4 : index) : i64
    %27 = llvm.mlir.null : !llvm.ptr<i32>
    %28 = llvm.getelementptr %27[%26] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr<i32> to i64
    %30 = llvm.mlir.constant(16 : index) : i64
    %31 = llvm.add %29, %30  : i64
    %32 = llvm.call @malloc(%31) : (i64) -> !llvm.ptr<i8>
    %33 = llvm.bitcast %32 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<i32> to i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.sub %30, %35  : i64
    %37 = llvm.add %34, %36  : i64
    %38 = llvm.urem %37, %30  : i64
    %39 = llvm.sub %37, %38  : i64
    %40 = llvm.inttoptr %39 : i64 to !llvm.ptr<i32>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.insertvalue %33, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %20, %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %21, %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %22, %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %23, %48[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %25, %49[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %22, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %23, %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %24, %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%54 : i64)
  ^bb1(%57: i64):  // 2 preds: ^bb0, ^bb11
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%59 : i64)
  ^bb3(%62: i64):  // 2 preds: ^bb2, ^bb10
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%64 : i64)
  ^bb5(%67: i64):  // 2 preds: ^bb4, ^bb9
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%69 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb8
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %74 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(4 : index) : i64
    %76 = llvm.mul %57, %75  : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mul %62, %77  : i64
    %79 = llvm.add %76, %78  : i64
    %80 = llvm.add %79, %67  : i64
    %81 = llvm.add %80, %72  : i64
    %82 = llvm.getelementptr %74[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.load %82 : !llvm.ptr<i32>
    %84 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.mul %57, %85  : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mul %62, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.add %89, %67  : i64
    %91 = llvm.add %90, %72  : i64
    %92 = llvm.getelementptr %84[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %83, %92 : !llvm.ptr<i32>
    %93 = llvm.add %72, %71  : i64
    llvm.br ^bb7(%93 : i64)
  ^bb9:  // pred: ^bb7
    %94 = llvm.add %67, %66  : i64
    llvm.br ^bb5(%94 : i64)
  ^bb10:  // pred: ^bb5
    %95 = llvm.add %62, %61  : i64
    llvm.br ^bb3(%95 : i64)
  ^bb11:  // pred: ^bb3
    %96 = llvm.add %57, %56  : i64
    llvm.br ^bb1(%96 : i64)
  ^bb12:  // pred: ^bb1
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(4 : index) : i64
    %102 = llvm.mlir.constant(4 : index) : i64
    %103 = llvm.mlir.null : !llvm.ptr<i32>
    %104 = llvm.getelementptr %103[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %105 = llvm.ptrtoint %104 : !llvm.ptr<i32> to i64
    %106 = llvm.mlir.constant(16 : index) : i64
    %107 = llvm.add %105, %106  : i64
    %108 = llvm.call @malloc(%107) : (i64) -> !llvm.ptr<i8>
    %109 = llvm.bitcast %108 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %110 = llvm.ptrtoint %109 : !llvm.ptr<i32> to i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.sub %106, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.urem %113, %106  : i64
    %115 = llvm.sub %113, %114  : i64
    %116 = llvm.inttoptr %115 : i64 to !llvm.ptr<i32>
    %117 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %118 = llvm.insertvalue %109, %117[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.insertvalue %116, %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.insertvalue %120, %119[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.insertvalue %97, %121[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.insertvalue %98, %122[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.insertvalue %99, %123[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.insertvalue %101, %124[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %126 = llvm.insertvalue %99, %125[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.insertvalue %100, %126[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%128 : i64)
  ^bb13(%131: i64):  // 2 preds: ^bb12, ^bb20
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%133 : i64)
  ^bb15(%136: i64):  // 2 preds: ^bb14, ^bb19
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%138 : i64)
  ^bb17(%141: i64):  // 2 preds: ^bb16, ^bb18
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %143 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %131, %144  : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %136, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.add %148, %141  : i64
    %150 = llvm.getelementptr %143[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %18, %150 : !llvm.ptr<i32>
    %151 = llvm.add %141, %140  : i64
    llvm.br ^bb17(%151 : i64)
  ^bb19:  // pred: ^bb17
    %152 = llvm.add %136, %135  : i64
    llvm.br ^bb15(%152 : i64)
  ^bb20:  // pred: ^bb15
    %153 = llvm.add %131, %130  : i64
    llvm.br ^bb13(%153 : i64)
  ^bb21:  // pred: ^bb13
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%154 : i64)
  ^bb22(%157: i64):  // 2 preds: ^bb21, ^bb32
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(2 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%159 : i64)
  ^bb24(%162: i64):  // 2 preds: ^bb23, ^bb31
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%164 : i64)
  ^bb26(%167: i64):  // 2 preds: ^bb25, ^bb30
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%169 : i64)
  ^bb28(%172: i64):  // 2 preds: ^bb27, ^bb29
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %174 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mul %157, %175  : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mul %162, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.add %179, %167  : i64
    %181 = llvm.add %180, %172  : i64
    %182 = llvm.getelementptr %174[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %183 = llvm.load %182 : !llvm.ptr<i32>
    %184 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mul %157, %185  : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mul %162, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.add %189, %167  : i64
    %191 = llvm.getelementptr %184[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %192 = llvm.load %191 : !llvm.ptr<i32>
    %193 = llvm.icmp "slt" %192, %183 : i32
    %194 = llvm.select %193, %192, %183 : i1, i32
    %195 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mul %157, %196  : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mul %162, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.add %200, %167  : i64
    %202 = llvm.getelementptr %195[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %194, %202 : !llvm.ptr<i32>
    %203 = llvm.add %172, %171  : i64
    llvm.br ^bb28(%203 : i64)
  ^bb30:  // pred: ^bb28
    %204 = llvm.add %167, %166  : i64
    llvm.br ^bb26(%204 : i64)
  ^bb31:  // pred: ^bb26
    %205 = llvm.add %162, %161  : i64
    llvm.br ^bb24(%205 : i64)
  ^bb32:  // pred: ^bb24
    %206 = llvm.add %157, %156  : i64
    llvm.br ^bb22(%206 : i64)
  ^bb33:  // pred: ^bb22
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(4 : index) : i64
    %213 = llvm.mlir.constant(4 : index) : i64
    %214 = llvm.mlir.null : !llvm.ptr<i32>
    %215 = llvm.getelementptr %214[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %216 = llvm.ptrtoint %215 : !llvm.ptr<i32> to i64
    %217 = llvm.mlir.constant(16 : index) : i64
    %218 = llvm.add %216, %217  : i64
    %219 = llvm.call @malloc(%218) : (i64) -> !llvm.ptr<i8>
    %220 = llvm.bitcast %219 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %221 = llvm.ptrtoint %220 : !llvm.ptr<i32> to i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.sub %217, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.urem %224, %217  : i64
    %226 = llvm.sub %224, %225  : i64
    %227 = llvm.inttoptr %226 : i64 to !llvm.ptr<i32>
    %228 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %229 = llvm.insertvalue %220, %228[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %207, %232[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %208, %233[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %209, %234[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %210, %235[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %212, %236[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %209, %237[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %210, %238[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %211, %239[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%241 : i64)
  ^bb34(%244: i64):  // 2 preds: ^bb33, ^bb44
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%246 : i64)
  ^bb36(%249: i64):  // 2 preds: ^bb35, ^bb43
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%251 : i64)
  ^bb38(%254: i64):  // 2 preds: ^bb37, ^bb42
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%256 : i64)
  ^bb40(%259: i64):  // 2 preds: ^bb39, ^bb41
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %261 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.mlir.constant(4 : index) : i64
    %263 = llvm.mul %244, %262  : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mul %249, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %254  : i64
    %268 = llvm.add %267, %259  : i64
    %269 = llvm.getelementptr %261[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %270 = llvm.load %269 : !llvm.ptr<i32>
    %271 = llvm.extractvalue %240[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mul %244, %272  : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mul %249, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.add %276, %254  : i64
    %278 = llvm.add %277, %259  : i64
    %279 = llvm.getelementptr %271[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %270, %279 : !llvm.ptr<i32>
    %280 = llvm.add %259, %258  : i64
    llvm.br ^bb40(%280 : i64)
  ^bb42:  // pred: ^bb40
    %281 = llvm.add %254, %253  : i64
    llvm.br ^bb38(%281 : i64)
  ^bb43:  // pred: ^bb38
    %282 = llvm.add %249, %248  : i64
    llvm.br ^bb36(%282 : i64)
  ^bb44:  // pred: ^bb36
    %283 = llvm.add %244, %243  : i64
    llvm.br ^bb34(%283 : i64)
  ^bb45:  // pred: ^bb34
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(4 : index) : i64
    %290 = llvm.mlir.constant(8 : index) : i64
    %291 = llvm.mlir.constant(8 : index) : i64
    %292 = llvm.mlir.null : !llvm.ptr<i32>
    %293 = llvm.getelementptr %292[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i32> to i64
    %295 = llvm.mlir.constant(16 : index) : i64
    %296 = llvm.add %294, %295  : i64
    %297 = llvm.call @malloc(%296) : (i64) -> !llvm.ptr<i8>
    %298 = llvm.bitcast %297 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %299 = llvm.ptrtoint %298 : !llvm.ptr<i32> to i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.sub %295, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.urem %302, %295  : i64
    %304 = llvm.sub %302, %303  : i64
    %305 = llvm.inttoptr %304 : i64 to !llvm.ptr<i32>
    %306 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %307 = llvm.insertvalue %298, %306[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %305, %307[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.insertvalue %309, %308[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %287, %313[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %290, %314[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %289, %315[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %287, %316[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %288, %317[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%319 : i64)
  ^bb46(%322: i64):  // 2 preds: ^bb45, ^bb56
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%324 : i64)
  ^bb48(%327: i64):  // 2 preds: ^bb47, ^bb55
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%329 : i64)
  ^bb50(%332: i64):  // 2 preds: ^bb49, ^bb54
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%334 : i64)
  ^bb52(%337: i64):  // 2 preds: ^bb51, ^bb53
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %339 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.getelementptr %339[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.load %340 : !llvm.ptr<i32>
    %342 = llvm.extractvalue %240[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mul %322, %343  : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mul %327, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.add %347, %332  : i64
    %349 = llvm.add %348, %19  : i64
    %350 = llvm.getelementptr %342[%349] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %351 = llvm.load %350 : !llvm.ptr<i32>
    %352 = llvm.icmp "slt" %341, %351 : i32
    %353 = llvm.select %352, %341, %351 : i1, i32
    %354 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.mlir.constant(8 : index) : i64
    %356 = llvm.mul %322, %355  : i64
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mul %327, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mul %332, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.add %362, %337  : i64
    %364 = llvm.getelementptr %354[%363] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %353, %364 : !llvm.ptr<i32>
    %365 = llvm.add %337, %336  : i64
    llvm.br ^bb52(%365 : i64)
  ^bb54:  // pred: ^bb52
    %366 = llvm.add %332, %331  : i64
    llvm.br ^bb50(%366 : i64)
  ^bb55:  // pred: ^bb50
    %367 = llvm.add %327, %326  : i64
    llvm.br ^bb48(%367 : i64)
  ^bb56:  // pred: ^bb48
    %368 = llvm.add %322, %321  : i64
    llvm.br ^bb46(%368 : i64)
  ^bb57:  // pred: ^bb46
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(4 : index) : i64
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mlir.null : !llvm.ptr<i32>
    %376 = llvm.getelementptr %375[%374] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %377 = llvm.ptrtoint %376 : !llvm.ptr<i32> to i64
    %378 = llvm.mlir.constant(16 : index) : i64
    %379 = llvm.add %377, %378  : i64
    %380 = llvm.call @malloc(%379) : (i64) -> !llvm.ptr<i8>
    %381 = llvm.bitcast %380 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %382 = llvm.ptrtoint %381 : !llvm.ptr<i32> to i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.sub %378, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.urem %385, %378  : i64
    %387 = llvm.sub %385, %386  : i64
    %388 = llvm.inttoptr %387 : i64 to !llvm.ptr<i32>
    %389 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %390 = llvm.insertvalue %381, %389[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %391 = llvm.insertvalue %388, %390[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.insertvalue %392, %391[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %394 = llvm.insertvalue %369, %393[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %395 = llvm.insertvalue %370, %394[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.insertvalue %371, %395[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.insertvalue %373, %396[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.insertvalue %371, %397[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.insertvalue %372, %398[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%400 : i64)
  ^bb58(%403: i64):  // 2 preds: ^bb57, ^bb65
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%405 : i64)
  ^bb60(%408: i64):  // 2 preds: ^bb59, ^bb64
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%410 : i64)
  ^bb62(%413: i64):  // 2 preds: ^bb61, ^bb63
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %415 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.mlir.constant(4 : index) : i64
    %417 = llvm.mul %403, %416  : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mul %408, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.add %420, %413  : i64
    %422 = llvm.getelementptr %415[%421] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %18, %422 : !llvm.ptr<i32>
    %423 = llvm.add %413, %412  : i64
    llvm.br ^bb62(%423 : i64)
  ^bb64:  // pred: ^bb62
    %424 = llvm.add %408, %407  : i64
    llvm.br ^bb60(%424 : i64)
  ^bb65:  // pred: ^bb60
    %425 = llvm.add %403, %402  : i64
    llvm.br ^bb58(%425 : i64)
  ^bb66:  // pred: ^bb58
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%426 : i64)
  ^bb67(%429: i64):  // 2 preds: ^bb66, ^bb77
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%431 : i64)
  ^bb69(%434: i64):  // 2 preds: ^bb68, ^bb76
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%436 : i64)
  ^bb71(%439: i64):  // 2 preds: ^bb70, ^bb75
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%441 : i64)
  ^bb73(%444: i64):  // 2 preds: ^bb72, ^bb74
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %446 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(8 : index) : i64
    %448 = llvm.mul %429, %447  : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mul %434, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mul %439, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.add %454, %444  : i64
    %456 = llvm.getelementptr %446[%455] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %457 = llvm.load %456 : !llvm.ptr<i32>
    %458 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %459 = llvm.mlir.constant(4 : index) : i64
    %460 = llvm.mul %429, %459  : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %434, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.add %463, %444  : i64
    %465 = llvm.getelementptr %458[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %466 = llvm.load %465 : !llvm.ptr<i32>
    %467 = llvm.icmp "slt" %466, %457 : i32
    %468 = llvm.select %467, %466, %457 : i1, i32
    %469 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.mlir.constant(4 : index) : i64
    %471 = llvm.mul %429, %470  : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %434, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.add %474, %444  : i64
    %476 = llvm.getelementptr %469[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %468, %476 : !llvm.ptr<i32>
    %477 = llvm.add %444, %443  : i64
    llvm.br ^bb73(%477 : i64)
  ^bb75:  // pred: ^bb73
    %478 = llvm.add %439, %438  : i64
    llvm.br ^bb71(%478 : i64)
  ^bb76:  // pred: ^bb71
    %479 = llvm.add %434, %433  : i64
    llvm.br ^bb69(%479 : i64)
  ^bb77:  // pred: ^bb69
    %480 = llvm.add %429, %428  : i64
    llvm.br ^bb67(%480 : i64)
  ^bb78:  // pred: ^bb67
    %481 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %482 = llvm.insertvalue %127, %481[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %483 = llvm.insertvalue %399, %482[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %483 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %63, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(0 : i64) : i64
    %97 = llvm.getelementptr %70[%96] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %97 : !llvm.ptr<ptr<i8>>
    %98 = llvm.mlir.constant(3 : i64) : i64
    %99 = llvm.call @omTensorCreateUntyped(%98) : (i64) -> !llvm.ptr<i8>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %103 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.bitcast %103 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%99, %100, %102, %104) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %105 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%99, %105) : (!llvm.ptr<i8>, i64) -> ()
    %106 = llvm.call @omTensorGetShape(%99) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %107 = llvm.call @omTensorGetStrides(%99) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %108 = llvm.mlir.constant(0 : i64) : i64
    %109 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.getelementptr %106[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.getelementptr %107[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %106[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %107[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(2 : i64) : i64
    %119 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.getelementptr %106[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %107[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.getelementptr %70[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %99, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %125 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

