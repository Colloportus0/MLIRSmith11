module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v5_0", "v2_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(2 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.mlir.constant(4 : index) : i64
    %24 = llvm.mlir.null : !llvm.ptr<i32>
    %25 = llvm.getelementptr %24[%23] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
    %27 = llvm.mlir.constant(16 : index) : i64
    %28 = llvm.add %26, %27  : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %31 = llvm.ptrtoint %30 : !llvm.ptr<i32> to i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.sub %27, %32  : i64
    %34 = llvm.add %31, %33  : i64
    %35 = llvm.urem %34, %27  : i64
    %36 = llvm.sub %34, %35  : i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr<i32>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %30, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %22, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %21, %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %19, %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %20, %49[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%51 : i64)
  ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb11
    %55 = llvm.icmp "slt" %54, %52 : i64
    llvm.cond_br %55, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%56 : i64)
  ^bb3(%59: i64):  // 2 preds: ^bb2, ^bb10
    %60 = llvm.icmp "slt" %59, %57 : i64
    llvm.cond_br %60, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%61 : i64)
  ^bb5(%64: i64):  // 2 preds: ^bb4, ^bb9
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%66 : i64)
  ^bb7(%69: i64):  // 2 preds: ^bb6, ^bb8
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %71 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(4 : index) : i64
    %73 = llvm.mul %54, %72  : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mul %59, %74  : i64
    %76 = llvm.add %73, %75  : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mul %64, %77  : i64
    %79 = llvm.add %76, %78  : i64
    %80 = llvm.add %79, %69  : i64
    %81 = llvm.getelementptr %71[%80] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.load %81 : !llvm.ptr<i32>
    %83 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.mul %54, %84  : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mul %59, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %64, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.add %91, %69  : i64
    %93 = llvm.getelementptr %83[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %82, %93 : !llvm.ptr<i32>
    %94 = llvm.add %69, %68  : i64
    llvm.br ^bb7(%94 : i64)
  ^bb9:  // pred: ^bb7
    %95 = llvm.add %64, %63  : i64
    llvm.br ^bb5(%95 : i64)
  ^bb10:  // pred: ^bb5
    %96 = llvm.add %59, %58  : i64
    llvm.br ^bb3(%96 : i64)
  ^bb11:  // pred: ^bb3
    %97 = llvm.add %54, %53  : i64
    llvm.br ^bb1(%97 : i64)
  ^bb12:  // pred: ^bb1
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mlir.constant(4 : index) : i64
    %105 = llvm.mlir.constant(4 : index) : i64
    %106 = llvm.mlir.null : !llvm.ptr<i32>
    %107 = llvm.getelementptr %106[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.ptrtoint %107 : !llvm.ptr<i32> to i64
    %109 = llvm.mlir.constant(16 : index) : i64
    %110 = llvm.add %108, %109  : i64
    %111 = llvm.call @malloc(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.bitcast %111 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<i32> to i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.sub %109, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.urem %116, %109  : i64
    %118 = llvm.sub %116, %117  : i64
    %119 = llvm.inttoptr %118 : i64 to !llvm.ptr<i32>
    %120 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %121 = llvm.insertvalue %112, %120[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %119, %121[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.insertvalue %123, %122[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %98, %124[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %99, %125[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %100, %126[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %101, %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %104, %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %101, %130[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %102, %131[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%133 : i64)
  ^bb13(%136: i64):  // 2 preds: ^bb12, ^bb23
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%138 : i64)
  ^bb15(%141: i64):  // 2 preds: ^bb14, ^bb22
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%143 : i64)
  ^bb17(%146: i64):  // 2 preds: ^bb16, ^bb21
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%148 : i64)
  ^bb19(%151: i64):  // 2 preds: ^bb18, ^bb20
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %153 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %154 = llvm.load %153 : !llvm.ptr<i32>
    %155 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(4 : index) : i64
    %157 = llvm.mul %136, %156  : i64
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mul %141, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mul %146, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.add %163, %151  : i64
    %165 = llvm.getelementptr %155[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %166 = llvm.load %165 : !llvm.ptr<i32>
    %167 = llvm.icmp "sgt" %154, %166 : i32
    %168 = llvm.select %167, %154, %166 : i1, i32
    %169 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mul %136, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %141, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %146, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.add %177, %151  : i64
    %179 = llvm.getelementptr %169[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %168, %179 : !llvm.ptr<i32>
    %180 = llvm.add %151, %150  : i64
    llvm.br ^bb19(%180 : i64)
  ^bb21:  // pred: ^bb19
    %181 = llvm.add %146, %145  : i64
    llvm.br ^bb17(%181 : i64)
  ^bb22:  // pred: ^bb17
    %182 = llvm.add %141, %140  : i64
    llvm.br ^bb15(%182 : i64)
  ^bb23:  // pred: ^bb15
    %183 = llvm.add %136, %135  : i64
    llvm.br ^bb13(%183 : i64)
  ^bb24:  // pred: ^bb13
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i32>
    %193 = llvm.getelementptr %192[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i32> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i32> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i32>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %184, %210[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %190, %214[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %187, %216[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %188, %217[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%219 : i64)
  ^bb25(%222: i64):  // 2 preds: ^bb24, ^bb35
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%224 : i64)
  ^bb27(%227: i64):  // 2 preds: ^bb26, ^bb34
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%229 : i64)
  ^bb29(%232: i64):  // 2 preds: ^bb28, ^bb33
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%234 : i64)
  ^bb31(%237: i64):  // 2 preds: ^bb30, ^bb32
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %239 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mul %222, %240  : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %227, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %232, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %237  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %250 = llvm.load %249 : !llvm.ptr<i32>
    %251 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mul %222, %252  : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mul %227, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mul %232, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.add %259, %237  : i64
    %261 = llvm.getelementptr %251[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.load %261 : !llvm.ptr<i32>
    %263 = llvm.sub %250, %262  : i32
    %264 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(4 : index) : i64
    %266 = llvm.mul %222, %265  : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mul %227, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mul %232, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.add %272, %237  : i64
    %274 = llvm.getelementptr %264[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %263, %274 : !llvm.ptr<i32>
    %275 = llvm.add %237, %236  : i64
    llvm.br ^bb31(%275 : i64)
  ^bb33:  // pred: ^bb31
    %276 = llvm.add %232, %231  : i64
    llvm.br ^bb29(%276 : i64)
  ^bb34:  // pred: ^bb29
    %277 = llvm.add %227, %226  : i64
    llvm.br ^bb27(%277 : i64)
  ^bb35:  // pred: ^bb27
    %278 = llvm.add %222, %221  : i64
    llvm.br ^bb25(%278 : i64)
  ^bb36:  // pred: ^bb25
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(8 : index) : i64
    %286 = llvm.mlir.constant(8 : index) : i64
    %287 = llvm.mlir.null : !llvm.ptr<i32>
    %288 = llvm.getelementptr %287[%286] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i32> to i64
    %290 = llvm.mlir.constant(16 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr<i8>
    %293 = llvm.bitcast %292 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i32> to i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.sub %290, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.urem %297, %290  : i64
    %299 = llvm.sub %297, %298  : i64
    %300 = llvm.inttoptr %299 : i64 to !llvm.ptr<i32>
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %302 = llvm.insertvalue %293, %301[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %300, %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %279, %305[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %280, %306[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %281, %307[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %282, %308[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %285, %309[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %282, %311[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %283, %312[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%314 : i64)
  ^bb37(%317: i64):  // 2 preds: ^bb36, ^bb47
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%319 : i64)
  ^bb39(%322: i64):  // 2 preds: ^bb38, ^bb46
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%324 : i64)
  ^bb41(%327: i64):  // 2 preds: ^bb40, ^bb45
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%329 : i64)
  ^bb43(%332: i64):  // 2 preds: ^bb42, ^bb44
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %334 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mlir.constant(4 : index) : i64
    %336 = llvm.mul %317, %335  : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %322, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mul %327, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.add %342, %332  : i64
    %344 = llvm.getelementptr %334[%343] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %345 = llvm.load %344 : !llvm.ptr<i32>
    %346 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(8 : index) : i64
    %348 = llvm.mul %317, %347  : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %322, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mul %327, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.add %354, %332  : i64
    %356 = llvm.getelementptr %346[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %345, %356 : !llvm.ptr<i32>
    %357 = llvm.add %332, %331  : i64
    llvm.br ^bb43(%357 : i64)
  ^bb45:  // pred: ^bb43
    %358 = llvm.add %327, %326  : i64
    llvm.br ^bb41(%358 : i64)
  ^bb46:  // pred: ^bb41
    %359 = llvm.add %322, %321  : i64
    llvm.br ^bb39(%359 : i64)
  ^bb47:  // pred: ^bb39
    %360 = llvm.add %317, %316  : i64
    llvm.br ^bb37(%360 : i64)
  ^bb48:  // pred: ^bb37
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%361 : i64)
  ^bb49(%364: i64):  // 2 preds: ^bb48, ^bb59
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%366 : i64)
  ^bb51(%369: i64):  // 2 preds: ^bb50, ^bb58
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%371 : i64)
  ^bb53(%374: i64):  // 2 preds: ^bb52, ^bb57
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%376 : i64)
  ^bb55(%379: i64):  // 2 preds: ^bb54, ^bb56
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.add %369, %381  : i64
    %383 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mlir.constant(4 : index) : i64
    %385 = llvm.mul %364, %384  : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mul %369, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %374, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %379  : i64
    %393 = llvm.getelementptr %383[%392] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %394 = llvm.load %393 : !llvm.ptr<i32>
    %395 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.mlir.constant(8 : index) : i64
    %397 = llvm.mul %364, %396  : i64
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mul %382, %398  : i64
    %400 = llvm.add %397, %399  : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mul %374, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.add %403, %379  : i64
    %405 = llvm.getelementptr %395[%404] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %394, %405 : !llvm.ptr<i32>
    %406 = llvm.add %379, %378  : i64
    llvm.br ^bb55(%406 : i64)
  ^bb57:  // pred: ^bb55
    %407 = llvm.add %374, %373  : i64
    llvm.br ^bb53(%407 : i64)
  ^bb58:  // pred: ^bb53
    %408 = llvm.add %369, %368  : i64
    llvm.br ^bb51(%408 : i64)
  ^bb59:  // pred: ^bb51
    %409 = llvm.add %364, %363  : i64
    llvm.br ^bb49(%409 : i64)
  ^bb60:  // pred: ^bb49
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %411 = llvm.extractvalue %132[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %411, %410[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %412, %413[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.insertvalue %415, %414[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.mlir.constant(4 : index) : i64
    %418 = llvm.insertvalue %417, %416[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.insertvalue %419, %418[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    %422 = llvm.insertvalue %313, %421[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %423 = llvm.insertvalue %420, %422[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %423 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v5_0", "v2_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %54, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %58 = llvm.extractvalue %57[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %59 = llvm.extractvalue %57[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %60 = llvm.mlir.constant(2 : i64) : i64
    %61 = llvm.mlir.constant(16 : i64) : i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %64 = llvm.mlir.constant(4 : i64) : i64
    %65 = llvm.call @omTensorCreateUntyped(%64) : (i64) -> !llvm.ptr<i8>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %69 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.bitcast %69 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%65, %66, %68, %70) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %71 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%65, %71) : (!llvm.ptr<i8>, i64) -> ()
    %72 = llvm.call @omTensorGetShape(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %73 = llvm.call @omTensorGetStrides(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.extractvalue %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %72[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %73[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(1 : i64) : i64
    %80 = llvm.extractvalue %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %72[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %73[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(2 : i64) : i64
    %85 = llvm.extractvalue %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %72[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %58[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %73[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.extractvalue %58[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %72[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %73[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.getelementptr %63[%94] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %65, %95 : !llvm.ptr<ptr<i8>>
    %96 = llvm.mlir.constant(1 : i64) : i64
    %97 = llvm.call @omTensorCreateUntyped(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %101 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%97, %98, %100, %102) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %103 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%97, %103) : (!llvm.ptr<i8>, i64) -> ()
    %104 = llvm.call @omTensorGetShape(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.call @omTensorGetStrides(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.mlir.constant(0 : i64) : i64
    %107 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %104[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.getelementptr %105[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.getelementptr %63[%111] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %97, %112 : !llvm.ptr<ptr<i8>>
    %113 = llvm.call @omTensorListCreate(%63, %60, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %113 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

